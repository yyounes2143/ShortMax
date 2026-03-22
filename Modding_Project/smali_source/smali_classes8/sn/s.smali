.class public interface abstract Lsn/s;
.super Ljava/lang/Object;
.source "SampleStream.java"


# virtual methods
.method public abstract c(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipData(J)I
.end method
