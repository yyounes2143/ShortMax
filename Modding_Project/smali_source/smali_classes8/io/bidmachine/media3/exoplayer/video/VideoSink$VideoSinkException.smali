.class public final Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
.super Ljava/lang/Exception;
.source "VideoSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoSinkException"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/media3/common/a;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;->a:Lio/bidmachine/media3/common/a;

    .line 5
    .line 6
    return-void
.end method
