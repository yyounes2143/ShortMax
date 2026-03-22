.class public abstract Lvn/v;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn/v$a;
    }
.end annotation


# instance fields
.field private a:Lvn/v$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lwn/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final a()Lwn/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lvn/v;->b:Lwn/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lwn/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public c()Lzm/d0;
    .locals 1

    .line 1
    sget-object v0, Lzm/d0;->F:Lzm/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lio/bidmachine/media3/exoplayer/i2$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public e(Lvn/v$a;Lwn/d;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iput-object p1, p0, Lvn/v;->a:Lvn/v$a;

    .line 2
    .line 3
    iput-object p2, p0, Lvn/v;->b:Lwn/d;

    .line 4
    .line 5
    return-void
.end method

.method protected final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvn/v;->a:Lvn/v$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lvn/v$a;->onTrackSelectionsInvalidated()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final g(Lio/bidmachine/media3/exoplayer/h2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvn/v;->a:Lvn/v$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lvn/v$a;->b(Lio/bidmachine/media3/exoplayer/h2;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract i(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public j()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvn/v;->a:Lvn/v$a;

    .line 3
    .line 4
    iput-object v0, p0, Lvn/v;->b:Lwn/d;

    .line 5
    .line 6
    return-void
.end method

.method public abstract k([Lio/bidmachine/media3/exoplayer/i2;Lsn/x;Lio/bidmachine/media3/exoplayer/source/r$b;Lzm/a0;)Lvn/w;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public l(Lzm/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Lzm/d0;)V
    .locals 0

    .line 1
    return-void
.end method
