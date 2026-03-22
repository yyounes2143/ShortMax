.class public abstract Lz6/h0;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/h0$a;
    }
.end annotation


# instance fields
.field private a:Lz6/h0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:La7/d;
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
.method protected final a()La7/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lz6/h0;->b:La7/d;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, La7/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public b()Lz6/f0;
    .locals 1

    .line 1
    sget-object v0, Lz6/f0;->A:Lz6/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lz6/h0$a;La7/d;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iput-object p1, p0, Lz6/h0;->a:Lz6/h0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lz6/h0;->b:La7/d;

    .line 4
    .line 5
    return-void
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz6/h0;->a:Lz6/h0$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lz6/h0$a;->onTrackSelectionsInvalidated()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract f(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public g()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz6/h0;->a:Lz6/h0$a;

    .line 3
    .line 4
    iput-object v0, p0, Lz6/h0;->b:La7/d;

    .line 5
    .line 6
    return-void
.end method

.method public abstract h([Lo5/o0;Ln6/w;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/u1;)Lz6/i0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public i(Lcom/google/android/exoplayer2/audio/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Lz6/f0;)V
    .locals 0

    .line 1
    return-void
.end method
