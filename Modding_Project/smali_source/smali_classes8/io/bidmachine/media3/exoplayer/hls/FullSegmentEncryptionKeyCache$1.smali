.class Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;
.super Ljava/util/LinkedHashMap;
.source "FullSegmentEncryptionKeyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;IFZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->b:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 2
    .line 3
    iput p5, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->a:I

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/net/Uri;",
            "[B>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->a:I

    .line 6
    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method
