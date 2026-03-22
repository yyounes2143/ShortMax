.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;
    }
.end annotation


# virtual methods
.method public abstract a()J
.end method

.method public abstract b(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V
.end method

.method public c(Landroid/net/Uri;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract d(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V
.end method

.method public abstract i(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/source/s$a;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;)V
.end method

.method public abstract k()Lio/bidmachine/media3/exoplayer/hls/playlist/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract l(Landroid/net/Uri;)V
.end method

.method public abstract m(Landroid/net/Uri;)Z
.end method

.method public abstract n()Z
.end method

.method public abstract o(Landroid/net/Uri;J)Z
.end method

.method public abstract p()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract stop()V
.end method
