.class public abstract Lio/bidmachine/media3/exoplayer/source/c;
.super Lio/bidmachine/media3/exoplayer/source/a;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/c$b;,
        Lio/bidmachine/media3/exoplayer/source/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/media3/exoplayer/source/a;"
    }
.end annotation


# instance fields
.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lio/bidmachine/media3/exoplayer/source/c$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic B(Lio/bidmachine/media3/exoplayer/source/c;Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/r;Lzm/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/c;->F(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/r;Lzm/a0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic F(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/r;Lzm/a0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/c;->G(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/r;Lzm/a0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/c$b;

    .line 22
    .line 23
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->a:Lio/bidmachine/media3/exoplayer/source/r;

    .line 24
    .line 25
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->b:Lio/bidmachine/media3/exoplayer/source/r$c;

    .line 26
    .line 27
    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/r;->k(Lio/bidmachine/media3/exoplayer/source/r$c;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->a:Lio/bidmachine/media3/exoplayer/source/r;

    .line 31
    .line 32
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->c:Lio/bidmachine/media3/exoplayer/source/c$a;

    .line 33
    .line 34
    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/r;->h(Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->a:Lio/bidmachine/media3/exoplayer/source/r;

    .line 38
    .line 39
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->c:Lio/bidmachine/media3/exoplayer/source/c$a;

    .line 40
    .line 41
    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/source/r;->i(Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method protected abstract C(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/r$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ")",
            "Lio/bidmachine/media3/exoplayer/source/r$b;"
        }
    .end annotation
.end method

.method protected D(Ljava/lang/Object;JLio/bidmachine/media3/exoplayer/source/r$b;)J
    .locals 0
    .param p4    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ")J"
        }
    .end annotation

    .line 1
    return-wide p2
.end method

.method protected E(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    return p2
.end method

.method protected abstract G(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/r;Lzm/a0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/media3/exoplayer/source/r;",
            "Lzm/a0;",
            ")V"
        }
    .end annotation
.end method

.method protected final H(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/media3/exoplayer/source/r;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lsn/c;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lsn/c;-><init>(Lio/bidmachine/media3/exoplayer/source/c;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/c$a;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/source/c$a;-><init>(Lio/bidmachine/media3/exoplayer/source/c;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/c$b;

    .line 25
    .line 26
    invoke-direct {v3, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/source/c$b;-><init>(Lio/bidmachine/media3/exoplayer/source/r;Lio/bidmachine/media3/exoplayer/source/r$c;Lio/bidmachine/media3/exoplayer/source/c$a;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c;->i:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-interface {p2, p1, v1}, Lio/bidmachine/media3/exoplayer/source/r;->p(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c;->i:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-interface {p2, p1, v1}, Lio/bidmachine/media3/exoplayer/source/r;->g(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c;->j:Len/o;

    .line 55
    .line 56
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/a;->w()Lhn/b2;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {p2, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/source/r;->l(Lio/bidmachine/media3/exoplayer/source/r$c;Len/o;Lhn/b2;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/a;->x()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    invoke-interface {p2, v0}, Lio/bidmachine/media3/exoplayer/source/r;->n(Lio/bidmachine/media3/exoplayer/source/r$c;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/c$b;

    .line 22
    .line 23
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->a:Lio/bidmachine/media3/exoplayer/source/r;

    .line 24
    .line 25
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/source/r;->maybeThrowSourceInfoRefreshError()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method protected u()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/c$b;

    .line 22
    .line 23
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->a:Lio/bidmachine/media3/exoplayer/source/r;

    .line 24
    .line 25
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->b:Lio/bidmachine/media3/exoplayer/source/r$c;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/source/r;->n(Lio/bidmachine/media3/exoplayer/source/r$c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method protected v()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/c$b;

    .line 22
    .line 23
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->a:Lio/bidmachine/media3/exoplayer/source/r;

    .line 24
    .line 25
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/c$b;->b:Lio/bidmachine/media3/exoplayer/source/r$c;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/source/r;->e(Lio/bidmachine/media3/exoplayer/source/r$c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method protected y(Len/o;)V
    .locals 0
    .param p1    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c;->j:Len/o;

    .line 2
    .line 3
    invoke-static {}, Lcn/m0;->A()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c;->i:Landroid/os/Handler;

    .line 8
    .line 9
    return-void
.end method
