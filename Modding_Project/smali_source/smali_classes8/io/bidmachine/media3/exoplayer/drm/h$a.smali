.class public Lio/bidmachine/media3/exoplayer/drm/h$a;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/h$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lio/bidmachine/media3/exoplayer/source/r$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/drm/h$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/drm/h$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 0
    .param p3    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/drm/h$a$a;",
            ">;I",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->a:I

    .line 5
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/h$a;->n(Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/h$a;->o(Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/h$a;->r(Lio/bidmachine/media3/exoplayer/drm/h;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/h$a;->s(Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/h$a;->p(Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/h$a;->q(Lio/bidmachine/media3/exoplayer/drm/h;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic n(Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/h;->g0(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic o(Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/h;->N(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic p(Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/h;->d0(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic q(Lio/bidmachine/media3/exoplayer/drm/h;I)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/drm/h;->Y(ILio/bidmachine/media3/exoplayer/source/r$b;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic r(Lio/bidmachine/media3/exoplayer/drm/h;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/drm/h;->K(ILio/bidmachine/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic s(Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/h;->O(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/h$a$a;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 20
    .line 21
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lln/g;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lln/g;-><init>(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 20
    .line 21
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lln/i;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lln/i;-><init>(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 20
    .line 21
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lln/h;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lln/h;-><init>(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 20
    .line 21
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lln/e;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Lln/e;-><init>(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 20
    .line 21
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lln/d;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Lln/d;-><init>(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 20
    .line 21
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lln/f;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lln/f;-><init>(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public t(Lio/bidmachine/media3/exoplayer/drm/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/drm/h$a$a;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public u(ILio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/drm/h$a;
    .locals 2
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/h$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/h$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
