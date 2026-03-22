.class public Lj5/s;
.super Ljava/lang/Object;
.source "WorkInitializer.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lk5/d;

.field private final c:Lj5/u;

.field private final d:Ll5/a;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lk5/d;Lj5/u;Ll5/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj5/s;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lj5/s;->b:Lk5/d;

    .line 7
    .line 8
    iput-object p3, p0, Lj5/s;->c:Lj5/u;

    .line 9
    .line 10
    iput-object p4, p0, Lj5/s;->d:Ll5/a;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lj5/s;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lj5/s;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lj5/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj5/s;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic d()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lj5/s;->b:Lk5/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lk5/d;->Q()Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lc5/p;

    .line 22
    .line 23
    iget-object v2, p0, Lj5/s;->c:Lj5/u;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-interface {v2, v1, v3}, Lj5/u;->a(Lc5/p;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj5/s;->d:Ll5/a;

    .line 2
    .line 3
    new-instance v1, Lj5/r;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lj5/r;-><init>(Lj5/s;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ll5/a;->a(Ll5/a$a;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj5/s;->a:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lj5/q;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lj5/q;-><init>(Lj5/s;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
