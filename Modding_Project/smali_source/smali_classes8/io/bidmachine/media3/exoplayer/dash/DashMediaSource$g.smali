.class final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$b<",
        "Lio/bidmachine/media3/exoplayer/upstream/c<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;->a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/exoplayer/upstream/c;JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Ljava/lang/Long;",
            ">;JJZ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;->a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->R(Lio/bidmachine/media3/exoplayer/upstream/c;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b(Lio/bidmachine/media3/exoplayer/upstream/c;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;->a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->V(Lio/bidmachine/media3/exoplayer/upstream/c;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Lio/bidmachine/media3/exoplayer/upstream/c;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/c<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;->a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    move-object v6, p6

    .line 7
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->W(Lio/bidmachine/media3/exoplayer/upstream/c;JJLjava/io/IOException;)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public bridge synthetic f(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;->b(Lio/bidmachine/media3/exoplayer/upstream/c;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic h(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;->a(Lio/bidmachine/media3/exoplayer/upstream/c;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic j(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$g;->c(Lio/bidmachine/media3/exoplayer/upstream/c;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
