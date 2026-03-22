.class public Lfq/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfq/n$b;,
        Lfq/n$c;,
        Lfq/n$d;
    }
.end annotation


# instance fields
.field private final a:Lsq/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lrq/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lfq/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Leq/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/rendering/internal/state/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final g:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lfq/q;",
            ">;"
        }
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

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field k:Lio/bidmachine/rendering/internal/view/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field volatile l:Lfq/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field volatile m:Lfq/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrq/b;Lfq/o;Leq/c;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrq/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lfq/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Leq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsq/h;

    .line 5
    .line 6
    const-string v1, "AdController"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lsq/h;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lfq/n;->a:Lsq/h;

    .line 12
    .line 13
    new-instance v1, Lnq/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lsq/h;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Lnq/b;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lfq/n;->b:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lfq/n;->c:Lrq/b;

    .line 31
    .line 32
    iput-object p3, p0, Lfq/n;->d:Lfq/o;

    .line 33
    .line 34
    iput-object p4, p0, Lfq/n;->e:Leq/c;

    .line 35
    .line 36
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lfq/n;->g:Ljava/util/Queue;

    .line 42
    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lfq/n;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lfq/n;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lfq/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    return-void
.end method

.method private synthetic A(Lfq/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n;->m:Lfq/q;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lfq/n;->j(Lfq/q;Lfq/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic C(Lfq/q;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lfq/q;->d()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lfq/q;->onShown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    .line 2
    .line 3
    new-instance v1, Lfq/j;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lfq/j;-><init>(Lfq/n;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lfq/n;Lfq/q;Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfq/n;->k(Lfq/q;Lrq/t;)V

    return-void
.end method

.method public static synthetic b(Lfq/q;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lfq/n;->C(Lfq/q;)V

    return-void
.end method

.method public static synthetic c(Lfq/q;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lfq/n;->y(Lfq/q;)V

    return-void
.end method

.method public static synthetic d(Lfq/n;Lrq/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfq/n;->l(Lrq/c;)V

    return-void
.end method

.method public static synthetic e(Lfq/n;Lfq/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfq/n;->x(Lfq/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lfq/n;Lfq/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfq/n;->v(Lfq/q;)V

    return-void
.end method

.method public static synthetic g(Lfq/n;Lfq/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfq/n;->A(Lfq/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lfq/n;Lfq/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfq/n;->t(Lfq/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lfq/n;)Lsq/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lfq/n;->a:Lsq/h;

    .line 2
    .line 3
    return-object p0
.end method

.method private j(Lfq/q;Lfq/q;)V
    .locals 7
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfq/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lfq/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfq/l;-><init>(Lfq/n;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 7
    .line 8
    .line 9
    new-instance v6, Lfq/m;

    .line 10
    .line 11
    invoke-direct {v6, p1}, Lfq/m;-><init>(Lfq/q;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lfq/n;->e:Leq/c;

    .line 15
    .line 16
    invoke-interface {p1}, Lfq/q;->e()Ltp/g;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lio/bidmachine/rendering/model/AnimationEventType;->Appear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-interface/range {v1 .. v6}, Leq/c;->d(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private synthetic k(Lfq/q;Lrq/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lfq/o;->c(Lfq/q;Lrq/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic l(Lrq/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfq/n;->k:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lio/bidmachine/rendering/internal/view/f;

    .line 7
    .line 8
    iget-object v1, p0, Lfq/n;->b:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lfq/n;->e:Leq/c;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/view/f;-><init>(Landroid/content/Context;Lrq/c;Leq/c;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lfq/n;->k:Lio/bidmachine/rendering/internal/view/f;

    .line 16
    .line 17
    new-instance p1, Lfq/n$d;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, p0, v1}, Lfq/n$d;-><init>(Lfq/n;Lfq/n$a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/f;->setListener(Lio/bidmachine/rendering/internal/view/f$d;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lfq/n;->k:Lio/bidmachine/rendering/internal/view/f;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/view/f;->m()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method static synthetic p(Lfq/n;)Lio/bidmachine/rendering/internal/state/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lfq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfq/n;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t(Lfq/q;)V
    .locals 6
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v5, Lfq/d;

    .line 2
    .line 3
    invoke-direct {v5, p0, p1}, Lfq/d;-><init>(Lfq/n;Lfq/q;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Lfq/q;->a(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lfq/n;->e:Leq/c;

    .line 11
    .line 12
    invoke-interface {p1}, Lfq/q;->e()Ltp/g;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lio/bidmachine/rendering/model/AnimationEventType;->Disappear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface/range {v0 .. v5}, Leq/c;->d(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic u(Lfq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfq/n;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic v(Lfq/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfq/n;->F(Lfq/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic x(Lfq/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/state/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lfq/n;->S()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lfq/n;->d:Lfq/o;

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lfq/o;->j(Lfq/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static synthetic y(Lfq/q;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lfq/q;->a(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private z()V
    .locals 7

    .line 1
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v6, Lfq/g;

    .line 7
    .line 8
    invoke-direct {v6, v0}, Lfq/g;-><init>(Lfq/o;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Lfq/q;->a(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lfq/n;->e:Leq/c;

    .line 20
    .line 21
    invoke-interface {v0}, Lfq/q;->e()Ltp/g;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lio/bidmachine/rendering/model/AnimationEventType;->Disappear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-interface/range {v1 .. v6}, Leq/c;->d(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method B()Lio/bidmachine/rendering/model/CacheType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->c:Lrq/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrq/b;->c()Lio/bidmachine/rendering/model/CacheType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method D()Lfq/q;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->g:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfq/q;

    .line 8
    .line 9
    return-object v0
.end method

.method E(Lfq/q;)Z
    .locals 1
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->g:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method F(Lfq/q;)V
    .locals 3
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "removeAndDestroyAdPhaseController (%s)"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lfq/e;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lfq/e;-><init>(Lfq/n;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lfq/n;->q(Lfq/q;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method G()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfq/n;->D()Lfq/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method H()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->g:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
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
    check-cast v1, Lfq/q;

    .line 18
    .line 19
    invoke-interface {v1}, Lfq/q;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method J()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lfq/n;->g:Ljava/util/Queue;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lfq/q;

    .line 29
    .line 30
    iget-object v2, p0, Lfq/n;->a:Lsq/h;

    .line 31
    .line 32
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "loadAdPhase (%s)"

    .line 37
    .line 38
    invoke-static {v2, v4, v3}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Lfq/q;->c()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method K()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->c:Lrq/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrq/b;->e()Lrq/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lfq/b;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Lfq/b;-><init>(Lfq/n;Lrq/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method L()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Lfq/o;->h(Lfq/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method M()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lfq/o;->i(Lfq/a;)V

    .line 15
    .line 16
    .line 17
    return v1
.end method

.method N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lfq/o;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfq/n;->k:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lfq/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->q()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lfq/n;->d:Lfq/o;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Lfq/o;->e(Lio/bidmachine/rendering/internal/view/f;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method P()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfq/n;->M()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfq/n;->k:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lfq/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lfq/n;->d:Lfq/o;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lfq/o;->f(Lio/bidmachine/rendering/internal/view/f;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->r()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method R()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

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
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 13
    .line 14
    invoke-interface {v0}, Lfq/o;->d()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    .line 18
    .line 19
    iput-object v0, p0, Lfq/n;->m:Lfq/q;

    .line 20
    .line 21
    invoke-virtual {p0}, Lfq/n;->D()Lfq/q;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lfq/n;->m:Lfq/q;

    .line 28
    .line 29
    iget-object v1, p0, Lfq/n;->m:Lfq/q;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    new-instance v1, Lrq/t;

    .line 34
    .line 35
    const-string v3, "No ad phase to show"

    .line 36
    .line 37
    invoke-direct {v1, v3}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, v0, v1}, Lfq/n;->r(Lfq/q;Lrq/t;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v1, p0, Lfq/n;->m:Lfq/q;

    .line 47
    .line 48
    if-eq v1, v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lfq/n;->E(Lfq/q;)Z

    .line 51
    .line 52
    .line 53
    new-instance v1, Lfq/n$c;

    .line 54
    .line 55
    iget-object v3, p0, Lfq/n;->d:Lfq/o;

    .line 56
    .line 57
    invoke-direct {v1, p0, v3}, Lfq/n$c;-><init>(Lfq/n;Lfq/o;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lfq/q;->d(Lfq/s;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lfq/n;->l:Lfq/q;

    .line 64
    .line 65
    invoke-interface {v0}, Lfq/q;->e()Ltp/g;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v3, p0, Lfq/n;->e:Leq/c;

    .line 70
    .line 71
    sget-object v4, Lio/bidmachine/rendering/model/AnimationEventType;->Appear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 72
    .line 73
    invoke-interface {v3, v1, v4}, Leq/c;->g(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v1, p0, Lfq/n;->d:Lfq/o;

    .line 77
    .line 78
    invoke-interface {v1, v0}, Lfq/o;->d(Lfq/q;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lfq/n;->O()V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v0, p0, Lfq/n;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "destroy"

    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lfq/n;->e:Leq/c;

    invoke-interface {v0}, Leq/c;->a()V

    .line 4
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    invoke-virtual {p0, v0}, Lfq/n;->q(Lfq/q;)V

    .line 5
    iget-object v0, p0, Lfq/n;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfq/q;

    .line 6
    invoke-virtual {p0, v1}, Lfq/n;->q(Lfq/q;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lfq/n;->w()V

    .line 8
    iget-object v0, p0, Lfq/n;->k:Lio/bidmachine/rendering/internal/view/f;

    new-instance v1, Lfq/k;

    invoke-direct {v1}, Lfq/k;-><init>()V

    invoke-static {v0, v1}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lfq/n;->k:Lio/bidmachine/rendering/internal/view/f;

    .line 10
    iget-object v0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->a()V

    return-void
.end method

.method public b()Lio/bidmachine/rendering/model/Orientation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lfq/n;->c:Lrq/b;

    invoke-virtual {v0}, Lrq/b;->d()Lio/bidmachine/rendering/model/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 9

    .line 2
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    invoke-virtual {p0}, Lfq/n;->B()Lio/bidmachine/rendering/model/CacheType;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "load (cacheType - %s)"

    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lfq/n;->b:Landroid/content/Context;

    invoke-static {v0}, Ltp/i;->b(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lfq/n;->c:Lrq/b;

    invoke-virtual {v0}, Lrq/b;->a()Ljava/util/Queue;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    new-instance v1, Lrq/t;

    const-string v2, "Ad phase queue is empty"

    invoke-direct {v1, v2}, Lrq/t;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lfq/o;->g(Lfq/a;Lrq/t;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lfq/n;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    invoke-interface {v0, p0}, Lfq/o;->i(Lfq/a;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v1}, Lio/bidmachine/rendering/internal/state/a;->c()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lrq/c;

    .line 11
    new-instance v5, Lsq/h;

    const-string v1, "AdPhaseController"

    invoke-direct {v5, v1}, Lsq/h;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lio/bidmachine/rendering/internal/h;->j()Lio/bidmachine/rendering/internal/h;

    move-result-object v1

    .line 13
    new-instance v6, Lio/bidmachine/rendering/internal/state/c;

    invoke-virtual {v5}, Lsq/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v1}, Lio/bidmachine/rendering/internal/state/c;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/h;)V

    .line 14
    new-instance v1, Lio/bidmachine/rendering/internal/controller/h;

    iget-object v3, p0, Lfq/n;->b:Landroid/content/Context;

    new-instance v7, Lfq/n$b;

    invoke-direct {v7, p0}, Lfq/n$b;-><init>(Lfq/n;)V

    iget-object v8, p0, Lfq/n;->e:Leq/c;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lio/bidmachine/rendering/internal/controller/h;-><init>(Landroid/content/Context;Lrq/c;Lsq/h;Lio/bidmachine/rendering/internal/state/c;Lfq/r;Leq/c;)V

    invoke-virtual {p0, v1}, Lfq/n;->n(Lfq/q;)Z

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, Lfq/n$a;->a:[I

    invoke-virtual {p0}, Lfq/n;->B()Lio/bidmachine/rendering/model/CacheType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0}, Lfq/n;->K()V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lfq/n;->K()V

    .line 18
    invoke-virtual {p0}, Lfq/n;->J()V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lfq/n;->J()V

    :goto_1
    return-void
.end method

.method public d()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "performShow"

    invoke-static {v0, v3, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->l()V

    .line 4
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v1}, Lio/bidmachine/rendering/internal/state/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Lfq/q;->d()V

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lfq/n;->Q()V

    .line 8
    invoke-virtual {p0}, Lfq/n;->J()V

    return v1
.end method

.method public f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "performHide"

    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    new-instance v1, Lfq/f;

    invoke-direct {v1}, Lfq/f;-><init>()V

    invoke-static {v0, v1}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 4
    invoke-virtual {p0}, Lfq/n;->O()V

    return-void
.end method

.method m(Lrq/n;)V
    .locals 1
    .param p1    # Lrq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lfq/o;->a(Lrq/n;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method n(Lfq/q;)Z
    .locals 1
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->g:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method o(Lrq/t;)Z
    .locals 2
    .param p1    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->f:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lfq/n;->d:Lfq/o;

    .line 12
    .line 13
    invoke-interface {v0, p0, p1}, Lfq/o;->g(Lfq/a;Lrq/t;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public onShown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onShown"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    .line 12
    .line 13
    new-instance v1, Lfq/h;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lfq/h;-><init>(Lfq/n;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method q(Lfq/q;)V
    .locals 3
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "destroyAdPhaseController (%s)"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lfq/c;

    .line 13
    .line 14
    invoke-direct {v0}, Lfq/c;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lfq/n;->l:Lfq/q;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-ne v0, p1, :cond_0

    .line 24
    .line 25
    iput-object v1, p0, Lfq/n;->l:Lfq/q;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lfq/n;->m:Lfq/q;

    .line 28
    .line 29
    if-ne v0, p1, :cond_1

    .line 30
    .line 31
    iput-object v1, p0, Lfq/n;->m:Lfq/q;

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method r(Lfq/q;Lrq/t;)V
    .locals 1
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lfq/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lfq/i;-><init>(Lfq/n;Lfq/q;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lfq/n;->z()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->a:Lsq/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsq/h;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method w()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lfq/n;->g:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
