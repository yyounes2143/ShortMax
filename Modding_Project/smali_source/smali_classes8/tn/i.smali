.class public interface abstract Ltn/i;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract a(JLgn/i0;)J
.end method

.method public abstract b(Lio/bidmachine/media3/exoplayer/k1;JLjava/util/List;Ltn/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/k1;",
            "J",
            "Ljava/util/List<",
            "+",
            "Ltn/m;",
            ">;",
            "Ltn/g;",
            ")V"
        }
    .end annotation
.end method

.method public abstract e(Ltn/e;)V
.end method

.method public abstract f(JLtn/e;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltn/e;",
            "Ljava/util/List<",
            "+",
            "Ltn/m;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract g(Ltn/e;ZLio/bidmachine/media3/exoplayer/upstream/b$c;Lio/bidmachine/media3/exoplayer/upstream/b;)Z
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Ltn/m;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method
