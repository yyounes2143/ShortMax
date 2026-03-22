.class public final Lio/bidmachine/media3/common/VideoFrameProcessingException;
.super Ljava/lang/Exception;
.source "VideoFrameProcessingException.java"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lio/bidmachine/media3/common/VideoFrameProcessingException;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static b(Ljava/lang/Exception;)Lio/bidmachine/media3/common/VideoFrameProcessingException;
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/common/VideoFrameProcessingException;->d(Ljava/lang/Exception;J)Lio/bidmachine/media3/common/VideoFrameProcessingException;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static d(Ljava/lang/Exception;J)Lio/bidmachine/media3/common/VideoFrameProcessingException;
    .locals 1

    .line 1
    instance-of v0, p0, Lio/bidmachine/media3/common/VideoFrameProcessingException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lio/bidmachine/media3/common/VideoFrameProcessingException;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lio/bidmachine/media3/common/VideoFrameProcessingException;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
