.class Lio/bidmachine/media3/exoplayer/video/h$b;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/video/h;->i1(JJLio/bidmachine/media3/exoplayer/mediacodec/h;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/mediacodec/h;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lio/bidmachine/media3/exoplayer/video/h;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/video/h;Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->d:Lio/bidmachine/media3/exoplayer/video/h;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->a:Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 4
    .line 5
    iput p3, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->b:I

    .line 6
    .line 7
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->c:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->d:Lio/bidmachine/media3/exoplayer/video/h;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->a:Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 4
    .line 5
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->b:I

    .line 6
    .line 7
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->c:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/video/h;->I2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->d:Lio/bidmachine/media3/exoplayer/video/h;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->a:Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 4
    .line 5
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->b:I

    .line 6
    .line 7
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/h$b;->c:J

    .line 8
    .line 9
    move-wide v5, p1

    .line 10
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/h;->K1(Lio/bidmachine/media3/exoplayer/video/h;Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
