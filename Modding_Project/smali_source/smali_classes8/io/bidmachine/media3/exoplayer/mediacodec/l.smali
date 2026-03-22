.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/l;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final a:Lio/bidmachine/media3/exoplayer/mediacodec/l;

.field public static final b:Lio/bidmachine/media3/exoplayer/mediacodec/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpn/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lpn/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/l;->a:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 7
    .line 8
    new-instance v0, Lpn/f;

    .line 9
    .line 10
    invoke-direct {v0}, Lpn/f;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/l;->b:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/l;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic c(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/l;->a:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/l;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->o(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
