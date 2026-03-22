.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;
.super Ljava/io/IOException;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistResetException"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;->a:Landroid/net/Uri;

    .line 5
    .line 6
    return-void
.end method
