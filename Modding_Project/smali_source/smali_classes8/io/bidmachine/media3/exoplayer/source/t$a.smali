.class Lio/bidmachine/media3/exoplayer/source/t$a;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/r;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public bridge synthetic e(Lln/k;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0
    .param p1    # Lln/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/t$a;->h(Lln/k;)Lio/bidmachine/media3/exoplayer/source/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/upstream/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/t$a;->i(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Lln/k;)Lio/bidmachine/media3/exoplayer/source/t;
    .locals 0
    .param p1    # Lln/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-object p0
.end method

.method public i(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/t;
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/upstream/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-object p0
.end method
