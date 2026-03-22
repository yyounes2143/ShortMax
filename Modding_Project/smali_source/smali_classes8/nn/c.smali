.class public final Lnn/c;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lnn/e;


# instance fields
.field private final a:Lnn/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnn/e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnn/e;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnn/c;->a:Lnn/e;

    .line 5
    .line 6
    iput-object p2, p0, Lnn/c;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)Lio/bidmachine/media3/exoplayer/upstream/c$a;
    .locals 2
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
    new-instance v0, Lrn/c;

    .line 2
    .line 3
    iget-object v1, p0, Lnn/c;->a:Lnn/e;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Lnn/e;->a(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)Lio/bidmachine/media3/exoplayer/upstream/c$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lnn/c;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lrn/c;-><init>(Lio/bidmachine/media3/exoplayer/upstream/c$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public b()Lio/bidmachine/media3/exoplayer/upstream/c$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "Lnn/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrn/c;

    .line 2
    .line 3
    iget-object v1, p0, Lnn/c;->a:Lnn/e;

    .line 4
    .line 5
    invoke-interface {v1}, Lnn/e;->b()Lio/bidmachine/media3/exoplayer/upstream/c$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lnn/c;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lrn/c;-><init>(Lio/bidmachine/media3/exoplayer/upstream/c$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
