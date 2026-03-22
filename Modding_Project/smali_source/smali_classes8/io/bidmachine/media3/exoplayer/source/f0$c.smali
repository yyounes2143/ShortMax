.class final Lio/bidmachine/media3/exoplayer/source/f0$c;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/media3/common/a;

.field public final b:Lio/bidmachine/media3/exoplayer/drm/i$b;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/exoplayer/drm/i$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/f0$c;->a:Lio/bidmachine/media3/common/a;

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/f0$c;->b:Lio/bidmachine/media3/exoplayer/drm/i$b;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/exoplayer/drm/i$b;Lio/bidmachine/media3/exoplayer/source/f0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/f0$c;-><init>(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/exoplayer/drm/i$b;)V

    return-void
.end method
