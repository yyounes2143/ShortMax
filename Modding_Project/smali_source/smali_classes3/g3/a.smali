.class public Lg3/a;
.super Ljava/lang/Object;
.source "DraweeHolder.java"

# interfaces
.implements Lc3/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lf3/b;",
        ">",
        "Ljava/lang/Object;",
        "Lc3/g0;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lf3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field private e:Lf3/a;

.field private final f:Lcom/facebook/drawee/components/DraweeEventTracker;


# direct methods
.method public constructor <init>(Lf3/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lg3/a;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lg3/a;->b:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lg3/a;->c:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 14
    .line 15
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->a()Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lg3/a;->p(Lf3/b;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg3/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lg3/a;->a:Z

    .line 15
    .line 16
    iget-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lf3/a;->e()Lf3/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 27
    .line 28
    invoke-interface {v0}, Lf3/a;->b()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg3/a;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lg3/a;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lg3/a;->b()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lg3/a;->e()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public static d(Lf3/b;Landroid/content/Context;)Lg3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DH::",
            "Lf3/b;",
            ">(TDH;",
            "Landroid/content/Context;",
            ")",
            "Lg3/a<",
            "TDH;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg3/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg3/a;-><init>(Lf3/b;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lg3/a;->m(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg3/a;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lg3/a;->a:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lg3/a;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 23
    .line 24
    invoke-interface {v0}, Lf3/a;->c()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private q(Lc3/g0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg3/a;->h()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lc3/f0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lc3/f0;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lc3/f0;->n(Lc3/g0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg3/a;->c:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 16
    .line 17
    .line 18
    iput-boolean p1, p0, Lg3/a;->c:Z

    .line 19
    .line 20
    invoke-direct {p0}, Lg3/a;->c()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public f()Lf3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lf3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg3/a;->d:Lf3/b;

    .line 2
    .line 3
    invoke-static {v0}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf3/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/a;->d:Lf3/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lf3/b;->b()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lf3/a;->e()Lf3/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lg3/a;->d:Lf3/b;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lg3/a;->b:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lg3/a;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lg3/a;->b:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lg3/a;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg3/a;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lf3/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public m(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lg3/a;->o(Lf3/a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public o(Lf3/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lg3/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lg3/a;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lg3/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 15
    .line 16
    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lg3/a;->e:Lf3/a;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v1, v2}, Lf3/a;->d(Lf3/b;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object p1, p0, Lg3/a;->e:Lf3/a;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 32
    .line 33
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lg3/a;->e:Lf3/a;

    .line 39
    .line 40
    iget-object v1, p0, Lg3/a;->d:Lf3/b;

    .line 41
    .line 42
    invoke-interface {p1, v1}, Lf3/a;->d(Lf3/b;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 47
    .line 48
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-direct {p0}, Lg3/a;->b()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public onDraw()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lg3/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lg3/a;->e:Lf3/a;

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lg3/a;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-class v1, Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 33
    .line 34
    const-string v2, "%x: Draw requested for a non-attached controller %x. %s"

    .line 35
    .line 36
    invoke-static {v1, v2, v0}, Ll2/a;->x(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lg3/a;->b:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lg3/a;->c:Z

    .line 43
    .line 44
    invoke-direct {p0}, Lg3/a;->c()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public p(Lf3/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->b(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lg3/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v1}, Lg3/a;->q(Lc3/g0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lf3/b;

    .line 21
    .line 22
    iput-object v1, p0, Lg3/a;->d:Lf3/b;

    .line 23
    .line 24
    invoke-interface {v1}, Lf3/b;->b()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 40
    :goto_1
    invoke-virtual {p0, v1}, Lg3/a;->a(Z)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p0}, Lg3/a;->q(Lc3/g0;)V

    .line 44
    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lg3/a;->e:Lf3/a;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Lf3/a;->d(Lf3/b;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lk2/f;->b(Ljava/lang/Object;)Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "controllerAttached"

    .line 6
    .line 7
    iget-boolean v2, p0, Lg3/a;->a:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "holderAttached"

    .line 14
    .line 15
    iget-boolean v2, p0, Lg3/a;->b:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "drawableVisible"

    .line 22
    .line 23
    iget-boolean v2, p0, Lg3/a;->c:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lg3/a;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "events"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lk2/f$a;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
