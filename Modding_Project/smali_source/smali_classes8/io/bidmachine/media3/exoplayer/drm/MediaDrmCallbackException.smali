.class public final Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;
.super Ljava/io/IOException;
.source "MediaDrmCallbackException.java"


# instance fields
.field public final a:Len/g;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(Len/g;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Len/g;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->a:Len/g;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->b:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->c:Ljava/util/Map;

    .line 9
    .line 10
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->d:J

    .line 11
    .line 12
    return-void
.end method
