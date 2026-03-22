.class public interface abstract Lcom/google/android/exoplayer2/source/o;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/o$b;,
        Lcom/google/android/exoplayer2/source/o$c;,
        Lcom/google/android/exoplayer2/source/o$a;
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/google/android/exoplayer2/y0;
.end method

.method public b()Lcom/google/android/exoplayer2/u1;
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

.method public abstract d(Lcom/google/android/exoplayer2/source/o$c;)V
.end method

.method public abstract e(Lcom/google/android/exoplayer2/source/p;)V
.end method

.method public abstract f(Lcom/google/android/exoplayer2/source/o$b;La7/b;J)Lcom/google/android/exoplayer2/source/n;
.end method

.method public abstract g(Lcom/google/android/exoplayer2/source/o$c;La7/y;Lp5/t3;)V
    .param p2    # La7/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract h(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V
.end method

.method public abstract i(Lcom/google/android/exoplayer2/source/n;)V
.end method

.method public abstract j(Lcom/google/android/exoplayer2/source/o$c;)V
.end method

.method public abstract k(Lcom/google/android/exoplayer2/source/o$c;)V
.end method

.method public abstract m(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/h;)V
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n(Lcom/google/android/exoplayer2/drm/h;)V
.end method
