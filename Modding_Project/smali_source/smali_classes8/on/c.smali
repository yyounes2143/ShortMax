.class public interface abstract Lon/c;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Lfn/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lon/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfn/d<",
        "Lio/bidmachine/media3/decoder/DecoderInputBuffer;",
        "Lon/d;",
        "Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract b(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation
.end method

.method public abstract dequeueOutputBuffer()Lon/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation
.end method
