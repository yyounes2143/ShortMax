.class public final Lnn/a;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistParserFactory.java"

# interfaces
.implements Lnn/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)Lio/bidmachine/media3/exoplayer/upstream/c$a;
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/hls/playlist/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d;",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/c;",
            ")",
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "Lnn/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b()Lio/bidmachine/media3/exoplayer/upstream/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "Lnn/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
