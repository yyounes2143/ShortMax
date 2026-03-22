.class public abstract Lbq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbq/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbq/a$a;
    }
.end annotation


# instance fields
.field private final a:Lbq/a$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lbq/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile g:Z

.field private volatile h:Z

.field private i:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lbq/a;->g:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lbq/a;->h:Z

    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    iput-wide v1, p0, Lbq/a;->j:J

    .line 12
    .line 13
    new-instance v3, Lbq/a$a;

    .line 14
    .line 15
    const/16 v4, 0x10

    .line 16
    .line 17
    invoke-direct {v3, p0, v4}, Lbq/a$a;-><init>(Lbq/a;I)V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lbq/a;->a:Lbq/a$a;

    .line 21
    .line 22
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lbq/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lbq/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lbq/a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    .line 50
    return-void
.end method

.method private D(ZLjava/lang/Long;)V
    .locals 2
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lbq/a;->k:J

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    invoke-virtual {p0, p1, p2}, Lbq/a;->N(J)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lbq/a;->c()V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {p0}, Lbq/a;->h()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lbq/a;->i:Landroid/net/Uri;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lbq/a;->O(Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Lbq/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    invoke-virtual {p0, p1}, Lbq/a;->A(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method

.method private d0()Lbq/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbq/a;->f:Lbq/d;

    .line 2
    .line 3
    return-object v0
.end method

.method private w()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbq/a;->i0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lbq/a;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    :catch_0
    return-void
.end method

.method private z(Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lbq/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lbq/a;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, v0, p1}, Lbq/a;->D(ZLjava/lang/Long;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lrq/t;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lbq/a;->B(Lrq/t;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected B(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lbq/a;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lbq/a;->K(Lrq/t;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lbq/a;->Q(Lrq/t;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method protected C(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lbq/d;->l(Lbq/b;Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected abstract E()J
.end method

.method protected F(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->U(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lbq/a;->S(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected G(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lbq/a;->y(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected abstract H(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected I(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lbq/a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-interface {v0, p0, v1, v2}, Lbq/d;->m(Lbq/b;J)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method protected J(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lrq/t;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lbq/a;->K(Lrq/t;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected K(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lbq/d;->f(Lbq/b;Lrq/t;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lbq/a;->q()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected abstract L()J
.end method

.method protected M(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->x(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public N(J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lbq/a;->G(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method protected O(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->H(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected P(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lrq/t;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lbq/a;->Q(Lrq/t;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected Q(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lbq/d;->g(Lbq/b;Lrq/t;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected abstract R()F
.end method

.method protected S(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lbq/d;->n(Lbq/b;F)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public T(F)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lbq/a;->M(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method protected U(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float p1, p1, v0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lbq/a;->g:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lbq/a;->g:Z

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lbq/a;->C(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean p1, p0, Lbq/a;->g:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lbq/a;->g:Z

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lbq/a;->C(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract V()Z
.end method

.method protected abstract W()Z
.end method

.method protected abstract X()V
.end method

.method protected abstract Y()V
.end method

.method protected abstract Z()V
.end method

.method public a()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lbq/a;->f:Lbq/d;

    .line 5
    invoke-virtual {p0}, Lbq/a;->b0()V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lbq/a;->O(Landroid/net/Uri;)V

    .line 2
    iput-object p1, p0, Lbq/a;->i:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p1}, Lbq/a;->T(F)V

    return-void
.end method

.method protected abstract a0()V
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lbq/a;->T(F)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->a:Lbq/a$a;

    .line 2
    .line 3
    invoke-static {v0}, Lbq/a$a;->g(Lbq/a$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c0()Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbq/a;->h0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public d(Lbq/d;)V
    .locals 0
    .param p1    # Lbq/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lbq/a;->f:Lbq/d;

    .line 2
    .line 3
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbq/a;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lbq/a;->pause()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lbq/a;->g()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0, v0, v1}, Lbq/a;->N(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lbq/a;->m()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method protected e0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lbq/a;->b0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->Z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected f0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->o()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lbq/a;->v()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lbq/a;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected g0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lbq/a;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lbq/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lbq/a;->k:J

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v2, v0}, Lbq/a;->D(ZLjava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lbq/a;->p()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getVolume()F
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbq/a;->j0()F

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return v0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method protected h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected h0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbq/a;->E()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public i()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbq/a;->k0()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return v0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method protected i0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbq/a;->L()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public j()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbq/a;->l0()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return v0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method protected j0()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbq/a;->R()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public k()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lbq/a;->a:Lbq/a$a;

    .line 8
    .line 9
    invoke-static {v0}, Lbq/a$a;->c(Lbq/a$a;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lbq/a;->z(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {p0, v0}, Lbq/a;->J(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method protected k0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbq/a;->V()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lbq/d;->b(Lbq/b;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected l0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbq/a;->W()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lbq/d;->h(Lbq/b;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected m0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lbq/d;->a(Lbq/b;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbq/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lbq/d;->d(Lbq/b;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbq/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lbq/a;->m0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lbq/a;->h0()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lbq/a;->k:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    :catch_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lbq/a;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lbq/a;->g()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-direct {p0, v0}, Lbq/a;->z(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :goto_1
    invoke-virtual {p0, v0}, Lbq/a;->J(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_2
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbq/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0, v0}, Lbq/a;->P(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method protected q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lbq/d;->k(Lbq/b;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method protected r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lbq/d;->c(Lbq/b;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lbq/d;->j(Lbq/b;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lbq/d;->e(Lbq/b;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    invoke-direct {p0}, Lbq/a;->d0()Lbq/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lbq/d;->i(Lbq/b;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbq/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    iget-object v0, p0, Lbq/a;->a:Lbq/a$a;

    .line 11
    .line 12
    invoke-static {v0}, Lbq/a$a;->e(Lbq/a$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected abstract x(F)V
.end method

.method protected abstract y(J)V
.end method
