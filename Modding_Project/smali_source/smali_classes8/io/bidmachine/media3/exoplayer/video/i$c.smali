.class final Lio/bidmachine/media3/exoplayer/video/i$c;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lio/bidmachine/media3/exoplayer/video/i;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/video/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$c;->b:Lio/bidmachine/media3/exoplayer/video/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/i;Lio/bidmachine/media3/exoplayer/video/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i$c;-><init>(Lio/bidmachine/media3/exoplayer/video/i;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lzm/i0;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$c;->b:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i;->w(Lio/bidmachine/media3/exoplayer/video/i;)Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/i$e;

    .line 22
    .line 23
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/i$c;->b:Lio/bidmachine/media3/exoplayer/video/i;

    .line 24
    .line 25
    invoke-interface {v0, v1, p2}, Lio/bidmachine/media3/exoplayer/video/i$e;->q(Lio/bidmachine/media3/exoplayer/video/i;Lzm/i0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public b(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$c;->b:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i;->w(Lio/bidmachine/media3/exoplayer/video/i;)Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/i$e;

    .line 22
    .line 23
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/i$c;->b:Lio/bidmachine/media3/exoplayer/video/i;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/i$e;->n(Lio/bidmachine/media3/exoplayer/video/i;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public c(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$c;->b:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i;->w(Lio/bidmachine/media3/exoplayer/video/i;)Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/i$e;

    .line 22
    .line 23
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/i$c;->b:Lio/bidmachine/media3/exoplayer/video/i;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/i$e;->c(Lio/bidmachine/media3/exoplayer/video/i;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
