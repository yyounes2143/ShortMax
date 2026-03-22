.class final Lio/bidmachine/media3/exoplayer/upstream/Loader$g;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/upstream/Loader$f;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/Loader$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$g;->a:Lio/bidmachine/media3/exoplayer/upstream/Loader$f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$g;->a:Lio/bidmachine/media3/exoplayer/upstream/Loader$f;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$f;->onLoaderReleased()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
