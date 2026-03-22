.class final Lio/bidmachine/media3/exoplayer/i1$b;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/d2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lsn/t;

.field private final c:I

.field private final d:J


# direct methods
.method private constructor <init>(Ljava/util/List;Lsn/t;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/d2$c;",
            ">;",
            "Lsn/t;",
            "IJ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/i1$b;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/i1$b;->b:Lsn/t;

    .line 5
    iput p3, p0, Lio/bidmachine/media3/exoplayer/i1$b;->c:I

    .line 6
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/i1$b;->d:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lsn/t;IJLio/bidmachine/media3/exoplayer/i1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/i1$b;-><init>(Ljava/util/List;Lsn/t;IJ)V

    return-void
.end method

.method static synthetic a(Lio/bidmachine/media3/exoplayer/i1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/exoplayer/i1$b;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lio/bidmachine/media3/exoplayer/i1$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/i1$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/i1$b;)Lsn/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/i1$b;->b:Lsn/t;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/media3/exoplayer/i1$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/i1$b;->d:J

    .line 2
    .line 3
    return-wide v0
.end method
