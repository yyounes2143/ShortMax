.class public interface abstract Lcom/google/android/exoplayer2/l1;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/l1$d;,
        Lcom/google/android/exoplayer2/l1$b;,
        Lcom/google/android/exoplayer2/l1$e;,
        Lcom/google/android/exoplayer2/l1$c;
    }
.end annotation


# virtual methods
.method public abstract A()J
.end method

.method public abstract C(Lcom/google/android/exoplayer2/l1$d;)V
.end method

.method public abstract D(Lz6/f0;)V
.end method

.method public abstract E(Lcom/google/android/exoplayer2/y0;)V
.end method

.method public abstract F(Lcom/google/android/exoplayer2/l1$d;)V
.end method

.method public abstract a()J
.end method

.method public abstract b(Lcom/google/android/exoplayer2/k1;)V
.end method

.method public abstract c(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/y0;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract clearVideoTextureView(Landroid/view/TextureView;)V
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract d()Lcom/google/android/exoplayer2/PlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Lcom/google/android/exoplayer2/v1;
.end method

.method public abstract f()Z
.end method

.method public abstract g(I)Z
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Lcom/google/android/exoplayer2/u1;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplayer2/k1;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleModeEnabled()Z
.end method

.method public abstract h()Lz6/f0;
.end method

.method public abstract i()J
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPlayingAd()Z
.end method

.method public abstract j()J
.end method

.method public abstract k()Z
.end method

.method public abstract l()J
.end method

.method public abstract m()V
.end method

.method public abstract n()Z
.end method

.method public abstract o()V
.end method

.method public abstract p()Lp6/f;
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepare()V
.end method

.method public abstract q()Z
.end method

.method public abstract r()I
.end method

.method public abstract release()V
.end method

.method public abstract s()Landroid/os/Looper;
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleModeEnabled(Z)V
.end method

.method public abstract setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideoTextureView(Landroid/view/TextureView;)V
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVolume(F)V
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
.end method

.method public abstract t()V
.end method

.method public abstract u()Lcom/google/android/exoplayer2/l1$b;
.end method

.method public abstract v()Lc7/z;
.end method

.method public abstract w()Z
.end method

.method public abstract x()I
.end method

.method public abstract y()V
.end method

.method public abstract z()Lcom/google/android/exoplayer2/z0;
.end method
