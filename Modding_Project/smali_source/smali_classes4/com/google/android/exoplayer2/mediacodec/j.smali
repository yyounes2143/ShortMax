.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/j;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/j$c;,
        Lcom/google/android/exoplayer2/mediacodec/j$b;,
        Lcom/google/android/exoplayer2/mediacodec/j$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/os/Bundle;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation
.end method

.method public abstract b(IIIJI)V
.end method

.method public abstract d()Z
.end method

.method public abstract e(IJ)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation
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

.method public abstract m(IILr5/c;JI)V
.end method

.method public abstract n(Lcom/google/android/exoplayer2/mediacodec/j$c;Landroid/os/Handler;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setVideoScalingMode(I)V
.end method
