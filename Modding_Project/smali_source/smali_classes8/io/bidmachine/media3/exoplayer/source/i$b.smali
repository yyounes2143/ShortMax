.class final Lio/bidmachine/media3/exoplayer/source/i$b;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lao/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/common/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i$b;->a:Lio/bidmachine/media3/common/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lao/r;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-interface {p1, v0, v1}, Lao/r;->track(II)Lao/o0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lao/j0$b;

    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lao/j0$b;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Lao/r;->d(Lao/j0;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lao/r;->endTracks()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i$b;->a:Lio/bidmachine/media3/common/a;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "text/x-unknown"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/i$b;->a:Lio/bidmachine/media3/common/a;

    .line 36
    .line 37
    iget-object v1, v1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Lao/o0;->g(Lio/bidmachine/media3/common/a;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public e(Lao/q;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public f(Lao/q;Lao/i0;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const p2, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Lao/q;->skip(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 p2, -0x1

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    return-void
.end method
