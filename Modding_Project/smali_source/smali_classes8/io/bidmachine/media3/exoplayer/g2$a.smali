.class Lio/bidmachine/media3/exoplayer/g2$a;
.super Lio/bidmachine/media3/exoplayer/source/m;
.source "PlaylistTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/g2;->E(Lsn/t;)Lio/bidmachine/media3/exoplayer/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final f:Lzm/a0$c;

.field final synthetic g:Lio/bidmachine/media3/exoplayer/g2;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/g2;Lzm/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/g2$a;->g:Lio/bidmachine/media3/exoplayer/g2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/source/m;-><init>(Lzm/a0;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lzm/a0$c;

    .line 7
    .line 8
    invoke-direct {p1}, Lzm/a0$c;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/g2$a;->f:Lzm/a0$c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public g(ILzm/a0$b;Z)Lzm/a0$b;
    .locals 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/m;->g(ILzm/a0$b;Z)Lzm/a0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p3, p1, Lzm/a0$b;->c:I

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/g2$a;->f:Lzm/a0$c;

    .line 8
    .line 9
    invoke-super {p0, p3, v0}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3}, Lzm/a0$c;->f()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    iget-object v1, p2, Lzm/a0$b;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v2, p2, Lzm/a0$b;->b:Ljava/lang/Object;

    .line 22
    .line 23
    iget v3, p2, Lzm/a0$b;->c:I

    .line 24
    .line 25
    iget-wide v4, p2, Lzm/a0$b;->d:J

    .line 26
    .line 27
    iget-wide v6, p2, Lzm/a0$b;->e:J

    .line 28
    .line 29
    sget-object v8, Lzm/b;->g:Lzm/b;

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    move-object v0, p1

    .line 33
    invoke-virtual/range {v0 .. v9}, Lzm/a0$b;->t(Ljava/lang/Object;Ljava/lang/Object;IJJLzm/b;Z)Lzm/a0$b;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p1, Lzm/a0$b;->f:Z

    .line 39
    .line 40
    :goto_0
    return-object p1
.end method
