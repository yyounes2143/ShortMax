.class public final Lsn/v;
.super Lio/bidmachine/media3/exoplayer/source/m;
.source "TimelineWithUpdatedMediaItem.java"


# instance fields
.field private final f:Lzm/q;


# direct methods
.method public constructor <init>(Lzm/a0;Lzm/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/m;-><init>(Lzm/a0;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lsn/v;->f:Lzm/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public o(ILzm/a0$c;J)Lzm/a0$c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/m;->o(ILzm/a0$c;J)Lzm/a0$c;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lsn/v;->f:Lzm/q;

    .line 5
    .line 6
    iput-object p1, p2, Lzm/a0$c;->c:Lzm/q;

    .line 7
    .line 8
    iget-object p1, p1, Lzm/q;->b:Lzm/q$h;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lzm/q$h;->h:Ljava/lang/Object;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput-object p1, p2, Lzm/a0$c;->b:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p2
.end method
