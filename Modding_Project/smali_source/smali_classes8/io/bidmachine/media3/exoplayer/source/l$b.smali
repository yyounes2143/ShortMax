.class public final Lio/bidmachine/media3/exoplayer/source/l$b;
.super Ljava/lang/Object;
.source "ExternallyLoadedMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final c:J

.field private final d:Lio/bidmachine/media3/exoplayer/source/j;


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/exoplayer/source/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/l$b;->c:J

    .line 5
    .line 6
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/l$b;->d:Lio/bidmachine/media3/exoplayer/source/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/l$b;->h(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Lln/k;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public f(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public h(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/l;
    .locals 7

    .line 1
    new-instance v6, Lio/bidmachine/media3/exoplayer/source/l;

    .line 2
    .line 3
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/l$b;->c:J

    .line 4
    .line 5
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/l$b;->d:Lio/bidmachine/media3/exoplayer/source/j;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, v6

    .line 9
    move-object v1, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/l;-><init>(Lzm/q;JLio/bidmachine/media3/exoplayer/source/j;Lio/bidmachine/media3/exoplayer/source/l$a;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method
