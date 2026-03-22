.class public final Lb7/p;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7/p$c;,
        Lb7/p$b;,
        Lb7/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lb7/d;

.field private final b:Lb7/m;

.field private final c:Lb7/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lb7/p$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lb7/d;Lb7/p$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lb7/d;",
            "Lb7/p$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lb7/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lb7/d;Lb7/p$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lb7/d;Lb7/p$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lb7/p$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lb7/d;",
            "Lb7/p$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lb7/p;->a:Lb7/d;

    .line 4
    iput-object p1, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Lb7/p;->c:Lb7/p$b;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lb7/p;->e:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lb7/p;->f:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lb7/o;

    invoke-direct {p1, p0}, Lb7/o;-><init>(Lb7/p;)V

    invoke-interface {p3, p2, p1}, Lb7/d;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lb7/m;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lb7/p;->b:Lb7/m;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILb7/p$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb7/p;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILb7/p$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lb7/p;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb7/p;->g(Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private g(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lb7/p$c;

    .line 18
    .line 19
    iget-object v1, p0, Lb7/p;->c:Lb7/p$b;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lb7/p$c;->b(Lb7/p$b;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lb7/p;->b:Lb7/m;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Lb7/m;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILb7/p$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lb7/p$c;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lb7/p$c;->a(ILb7/p$a;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lb7/p;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    .line 11
    new-instance v1, Lb7/p$c;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lb7/p$c;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public d(Landroid/os/Looper;Lb7/d;Lb7/p$b;)Lb7/p;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lb7/d;",
            "Lb7/p$b<",
            "TT;>;)",
            "Lb7/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb7/p;

    .line 2
    .line 3
    iget-object v1, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lb7/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lb7/d;Lb7/p$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public e(Landroid/os/Looper;Lb7/p$b;)Lb7/p;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lb7/p$b<",
            "TT;>;)",
            "Lb7/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/p;->a:Lb7/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lb7/p;->d(Landroid/os/Looper;Lb7/d;Lb7/p$b;)Lb7/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb7/p;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

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
    iget-object v0, p0, Lb7/p;->b:Lb7/m;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Lb7/m;->a(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lb7/p;->b:Lb7/m;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lb7/m;->obtainMessage(I)Lb7/m$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lb7/m;->b(Lb7/m$a;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lb7/p;->e:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lb7/p;->e:Ljava/util/ArrayDeque;

    .line 35
    .line 36
    iget-object v2, p0, Lb7/p;->f:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lb7/p;->f:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 44
    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lb7/p;->e:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lb7/p;->e:Ljava/util/ArrayDeque;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Runnable;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lb7/p;->e:Ljava/util/ArrayDeque;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method public i(ILb7/p$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lb7/p$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    iget-object v1, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lb7/p;->f:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    new-instance v2, Lb7/n;

    .line 11
    .line 12
    invoke-direct {v2, v0, p1, p2}, Lb7/n;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lb7/p$c;

    .line 18
    .line 19
    iget-object v2, p0, Lb7/p;->c:Lb7/p$b;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lb7/p$c;->c(Lb7/p$b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lb7/p;->g:Z

    .line 32
    .line 33
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lb7/p$c;

    .line 18
    .line 19
    iget-object v2, v1, Lb7/p$c;->a:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lb7/p;->c:Lb7/p$b;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lb7/p$c;->c(Lb7/p$b;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lb7/p;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public l(ILb7/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lb7/p$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lb7/p;->i(ILb7/p$a;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb7/p;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
