.class public interface abstract Lzm/h0;
.super Ljava/lang/Object;
.source "VideoGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm/h0$a;
    }
.end annotation


# virtual methods
.method public abstract a(I)Lzm/g0;
.end method

.method public abstract b(Lzm/z;)V
    .param p1    # Lzm/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract d(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/VideoFrameProcessingException;
        }
    .end annotation
.end method

.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/VideoFrameProcessingException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method
