.class final Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/source/r$b;

.field private final b:Lio/bidmachine/media3/exoplayer/source/q;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/source/r$b;Lio/bidmachine/media3/exoplayer/source/q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;->a:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;->b:Lio/bidmachine/media3/exoplayer/source/q;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/r$b;Lio/bidmachine/media3/exoplayer/source/q;Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;-><init>(Lio/bidmachine/media3/exoplayer/source/r$b;Lio/bidmachine/media3/exoplayer/source/q;)V

    return-void
.end method

.method static synthetic a(Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;)Lio/bidmachine/media3/exoplayer/source/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;->b:Lio/bidmachine/media3/exoplayer/source/q;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;)Lio/bidmachine/media3/exoplayer/source/r$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$c;->a:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    return-object p0
.end method
