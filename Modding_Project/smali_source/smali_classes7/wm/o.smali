.class public Lwm/o;
.super Ljava/lang/Object;
.source "VisibilityTrackerImpl.java"

# interfaces
.implements Lwm/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwm/o$d;,
        Lwm/o$b;,
        Lwm/o$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/bidmachine/core/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lwm/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/bidmachine/core/i;Lwm/p;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/core/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lwm/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwm/o;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lwm/o;->b:Lio/bidmachine/core/i;

    .line 12
    .line 13
    iput-object p3, p0, Lwm/o;->c:Lwm/p;

    .line 14
    .line 15
    new-instance p1, Lwm/o$d;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p0, p2}, Lwm/o$d;-><init>(Lwm/o;Lwm/o$a;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lwm/o;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 22
    .line 23
    new-instance p1, Lwm/o$b;

    .line 24
    .line 25
    invoke-direct {p1, p0, p2}, Lwm/o$b;-><init>(Lwm/o;Lwm/o$a;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lwm/o;->e:Ljava/lang/Runnable;

    .line 29
    .line 30
    new-instance p1, Lwm/o$c;

    .line 31
    .line 32
    invoke-direct {p1, p0, p2}, Lwm/o$c;-><init>(Lwm/o;Lwm/o$a;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lwm/o;->f:Ljava/lang/Runnable;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lwm/o;->g:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lwm/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lwm/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    return-void
.end method

.method private static synthetic A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Show wasn\'t tracked: global visibility verification failed - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic B(FFLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "Show wasn\'t tracked: ad view not completely visible (%s / %s) - %s"

    .line 14
    .line 15
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static synthetic C(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Show wasn\'t tracked: content or root layout not found - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic D(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Show wasn\'t tracked: ad view is out of current window - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic E(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Start tracking - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic F(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Stop tracking - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwm/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lwm/o;->e:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-static {v0}, Lio/bidmachine/core/g;->h(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lwm/o;->e:Ljava/lang/Runnable;

    .line 18
    .line 19
    const-wide/16 v1, 0x64

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lio/bidmachine/core/g;->a0(Ljava/lang/Runnable;J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private H(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/2addr v0, v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sub-int/2addr v1, v2

    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    sub-int/2addr v3, p1

    .line 53
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    mul-int/2addr v1, p1

    .line 58
    sub-int p1, v0, v1

    .line 59
    .line 60
    int-to-float p1, p1

    .line 61
    int-to-float p2, v0

    .line 62
    div-float/2addr p1, p2

    .line 63
    return p1
.end method

.method public static synthetic a(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwm/o;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->F(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->E(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(FFLjava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lwm/o;->u(FFLjava/lang/String;Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwm/o;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(FFLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lwm/o;->B(FFLjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic m(Lwm/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwm/o;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lwm/o;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lwm/o;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic o(Lwm/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwm/o;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lwm/o;->s()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lwm/o;->stop()V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget-boolean v2, p0, Lwm/o;->j:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-boolean v2, p0, Lwm/o;->k:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lwm/o;->stop()V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v2, p0, Lwm/o;->b:Lio/bidmachine/core/i;

    .line 25
    .line 26
    invoke-virtual {v2}, Lio/bidmachine/core/i;->b()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iget-object v4, p0, Lwm/o;->b:Lio/bidmachine/core/i;

    .line 31
    .line 32
    invoke-virtual {v4}, Lio/bidmachine/core/i;->a()F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v5, p0, Lwm/o;->b:Lio/bidmachine/core/i;

    .line 37
    .line 38
    invoke-virtual {v5}, Lio/bidmachine/core/i;->d()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget-object v6, p0, Lwm/o;->b:Lio/bidmachine/core/i;

    .line 43
    .line 44
    invoke-virtual {v6}, Lio/bidmachine/core/i;->c()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-direct {p0, v0, v4, v5, v6}, Lwm/o;->t(Landroid/view/View;FZZ)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v4, 0x0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lwm/o;->c:Lwm/p;

    .line 56
    .line 57
    invoke-interface {v0}, Lwm/p;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iput-boolean v1, p0, Lwm/o;->j:Z

    .line 64
    .line 65
    iget-boolean v0, p0, Lwm/o;->l:Z

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    iget-boolean v0, p0, Lwm/o;->k:Z

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lwm/o;->f:Ljava/lang/Runnable;

    .line 74
    .line 75
    invoke-static {v0, v2, v3}, Lio/bidmachine/core/g;->a0(Ljava/lang/Runnable;J)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    iput-wide v2, p0, Lwm/o;->m:J

    .line 83
    .line 84
    iput-boolean v1, p0, Lwm/o;->l:Z

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-boolean v0, p0, Lwm/o;->k:Z

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lwm/o;->f:Ljava/lang/Runnable;

    .line 92
    .line 93
    invoke-static {v0}, Lio/bidmachine/core/g;->h(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v0, 0x0

    .line 97
    .line 98
    iput-wide v0, p0, Lwm/o;->m:J

    .line 99
    .line 100
    iput-boolean v4, p0, Lwm/o;->l:Z

    .line 101
    .line 102
    :cond_3
    :goto_0
    return v4
.end method

.method private q(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const v2, 0x1020002

    .line 18
    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return-object v0
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwm/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lwm/o;->G()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private t(Landroid/view/View;FZZ)Z
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance p1, Lwm/g;

    .line 14
    .line 15
    invoke-direct {p1, v1}, Lwm/g;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 19
    .line 20
    .line 21
    return v3

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    invoke-static {p1}, Lio/bidmachine/core/g;->P(Landroid/view/View;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    new-instance p1, Lwm/h;

    .line 32
    .line 33
    invoke-direct {p1, v1}, Lwm/h;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 37
    .line 38
    .line 39
    return v3

    .line 40
    :cond_1
    if-nez p3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-nez p3, :cond_2

    .line 47
    .line 48
    new-instance p1, Lwm/i;

    .line 49
    .line 50
    invoke-direct {p1, v1}, Lwm/i;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 54
    .line 55
    .line 56
    return v3

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    mul-int/2addr p3, v2

    .line 66
    int-to-float p3, p3

    .line 67
    const/4 v2, 0x0

    .line 68
    cmpl-float v2, p3, v2

    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    new-instance p1, Lwm/j;

    .line 73
    .line 74
    invoke-direct {p1, v1}, Lwm/j;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_4

    .line 91
    .line 92
    new-instance p1, Lwm/k;

    .line 93
    .line 94
    invoke-direct {p1, v1}, Lwm/k;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 98
    .line 99
    .line 100
    return v3

    .line 101
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    mul-int/2addr v4, v5

    .line 110
    int-to-float v4, v4

    .line 111
    div-float/2addr v4, p3

    .line 112
    cmpg-float p3, v4, p2

    .line 113
    .line 114
    if-gez p3, :cond_5

    .line 115
    .line 116
    new-instance p1, Lwm/l;

    .line 117
    .line 118
    invoke-direct {p1, v4, p2, v1}, Lwm/l;-><init>(FFLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 122
    .line 123
    .line 124
    return v3

    .line 125
    :cond_5
    invoke-direct {p0, p1}, Lwm/o;->q(Landroid/view/View;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    if-nez p3, :cond_6

    .line 130
    .line 131
    new-instance p1, Lwm/m;

    .line 132
    .line 133
    invoke-direct {p1, v1}, Lwm/m;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 137
    .line 138
    .line 139
    return v3

    .line 140
    :cond_6
    new-instance v4, Landroid/graphics/Rect;

    .line 141
    .line 142
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    if-nez p3, :cond_7

    .line 153
    .line 154
    new-instance p1, Lwm/n;

    .line 155
    .line 156
    invoke-direct {p1, v1}, Lwm/n;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 160
    .line 161
    .line 162
    return v3

    .line 163
    :cond_7
    if-nez p4, :cond_c

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    check-cast p3, Landroid/view/ViewGroup;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    check-cast p4, Landroid/view/ViewGroup;

    .line 176
    .line 177
    move v4, v3

    .line 178
    :goto_0
    if-eqz p4, :cond_c

    .line 179
    .line 180
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    add-int/2addr v5, v0

    .line 185
    :goto_1
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-ge v5, v6, :cond_a

    .line 190
    .line 191
    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_9

    .line 200
    .line 201
    invoke-static {v6}, Lio/bidmachine/core/g;->F(Landroid/view/View;)Landroid/graphics/Rect;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-static {v2, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    if-eqz v8, :cond_9

    .line 210
    .line 211
    invoke-direct {p0, v2, v7}, Lwm/o;->H(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    cmpg-float v8, v7, p2

    .line 216
    .line 217
    if-gez v8, :cond_8

    .line 218
    .line 219
    new-instance p1, Lwm/d;

    .line 220
    .line 221
    invoke-direct {p1, v7, p2, v1, v6}, Lwm/d;-><init>(FFLjava/lang/String;Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 225
    .line 226
    .line 227
    return v3

    .line 228
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    const/4 v6, 0x3

    .line 231
    if-lt v4, v6, :cond_9

    .line 232
    .line 233
    new-instance p1, Lwm/e;

    .line 234
    .line 235
    invoke-direct {p1, v4, v1}, Lwm/e;-><init>(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 239
    .line 240
    .line 241
    return v3

    .line 242
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_a
    if-eq p4, p3, :cond_b

    .line 246
    .line 247
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .line 253
    move-object v9, p4

    .line 254
    move-object p4, p1

    .line 255
    move-object p1, v9

    .line 256
    goto :goto_0

    .line 257
    :cond_b
    const/4 p4, 0x0

    .line 258
    goto :goto_0

    .line 259
    :goto_2
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    :cond_c
    return v0
.end method

.method private static synthetic u(FFLjava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "Show wasn\'t tracked: ad view is covered by another view (visible percent - %s / %s, ad view - %s, overlapping view - %s)"

    .line 14
    .line 15
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static synthetic v(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "Show wasn\'t tracked: ad view is covered by too many views (overlapping views count - %s, ad view - %s)"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic w(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Show wasn\'t tracked: view visibility verification failed - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Show wasn\'t tracked: view transparent verification failed - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic y(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Show wasn\'t tracked: window focus verification failed - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic z(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Show wasn\'t tracked: view size verification failed - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method s()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lwm/o;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwm/o;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lwm/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lwm/o;->s()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lwm/o;->stop()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v2, Lwm/c;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lwm/c;-><init>(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lwm/o;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v1
.end method

.method public stop()V
    .locals 8

    .line 1
    iget-object v0, p0, Lwm/o;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lwm/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lwm/o;->s()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v2, Lwm/f;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lwm/f;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lwm/o;->b:Lio/bidmachine/core/i;

    .line 25
    .line 26
    invoke-virtual {v2}, Lio/bidmachine/core/i;->b()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iget-boolean v4, p0, Lwm/o;->j:Z

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    iget-boolean v4, p0, Lwm/o;->k:Z

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    const-wide/16 v4, -0x1

    .line 39
    .line 40
    cmp-long v4, v2, v4

    .line 41
    .line 42
    if-lez v4, :cond_0

    .line 43
    .line 44
    iget-wide v4, p0, Lwm/o;->m:J

    .line 45
    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    cmp-long v4, v4, v6

    .line 49
    .line 50
    if-lez v4, :cond_0

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    iget-wide v6, p0, Lwm/o;->m:J

    .line 57
    .line 58
    sub-long/2addr v4, v6

    .line 59
    cmp-long v2, v4, v2

    .line 60
    .line 61
    if-ltz v2, :cond_0

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    iput-boolean v2, p0, Lwm/o;->k:Z

    .line 65
    .line 66
    iget-object v2, p0, Lwm/o;->c:Lwm/p;

    .line 67
    .line 68
    invoke-interface {v2}, Lwm/p;->b()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    iget-object v2, p0, Lwm/o;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object v1, p0, Lwm/o;->e:Ljava/lang/Runnable;

    .line 90
    .line 91
    invoke-static {v1}, Lio/bidmachine/core/g;->h(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lwm/o;->f:Ljava/lang/Runnable;

    .line 95
    .line 96
    invoke-static {v1}, Lio/bidmachine/core/g;->h(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw v1
.end method
