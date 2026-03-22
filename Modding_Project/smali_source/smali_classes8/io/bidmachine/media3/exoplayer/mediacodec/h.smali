.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/h;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/h$c;,
        Lio/bidmachine/media3/exoplayer/mediacodec/h$d;,
        Lio/bidmachine/media3/exoplayer/mediacodec/h$b;,
        Lio/bidmachine/media3/exoplayer/mediacodec/h$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract b(IIIJI)V
.end method

.method public abstract c(IILfn/c;JI)V
.end method

.method public abstract d()Z
.end method

.method public abstract e(IJ)V
.end method

.method public abstract f(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract flush()V
.end method

.method public abstract g(IZ)V
.end method

.method public abstract h()Landroid/media/MediaFormat;
.end method

.method public abstract i(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract j(Landroid/view/Surface;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract k()I
.end method

.method public abstract l(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public m(Lio/bidmachine/media3/exoplayer/mediacodec/h$c;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract n()V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x23
    .end annotation
.end method

.method public abstract o(Lio/bidmachine/media3/exoplayer/mediacodec/h$d;Landroid/os/Handler;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setVideoScalingMode(I)V
.end method
