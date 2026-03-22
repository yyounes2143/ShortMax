.class final Lio/bidmachine/media3/exoplayer/u0$e;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/p1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lio/bidmachine/media3/exoplayer/source/r;

.field private c:Lzm/a0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0$e;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/u0$e;->b:Lio/bidmachine/media3/exoplayer/source/r;

    .line 7
    .line 8
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/p;->V()Lzm/a0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0$e;->c:Lzm/a0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()Lzm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0$e;->c:Lzm/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Lzm/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0$e;->c:Lzm/a0;

    .line 2
    .line 3
    return-void
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0$e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
