.class public final Lio/bidmachine/media3/exoplayer/dash/d$c;
.super Ltn/b;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field private final e:Lio/bidmachine/media3/exoplayer/dash/d$b;

.field private final f:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/d$b;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Ltn/b;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/d$c;->e:Lio/bidmachine/media3/exoplayer/dash/d$b;

    .line 5
    .line 6
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/dash/d$c;->f:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Ltn/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/d$c;->e:Lio/bidmachine/media3/exoplayer/dash/d$b;

    .line 5
    .line 6
    invoke-virtual {p0}, Ltn/b;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/d$b;->i(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public b()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Ltn/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/d$c;->e:Lio/bidmachine/media3/exoplayer/dash/d$b;

    .line 5
    .line 6
    invoke-virtual {p0}, Ltn/b;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/d$b;->k(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method
