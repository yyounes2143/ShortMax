.class Lw7/y;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lw8/b;
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw8/b<",
        "TT;>;",
        "Lw8/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lw8/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lw8/a$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw7/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lw7/v;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw7/y;->c:Lw8/a$a;

    .line 7
    .line 8
    new-instance v0, Lw7/w;

    .line 9
    .line 10
    invoke-direct {v0}, Lw7/w;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lw7/y;->d:Lw8/b;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>(Lw8/a$a;Lw8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a$a<",
            "TT;>;",
            "Lw8/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw7/y;->a:Lw8/a$a;

    .line 5
    .line 6
    iput-object p2, p0, Lw7/y;->b:Lw8/b;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lw7/y;->g()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lw8/a$a;Lw8/a$a;Lw8/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lw7/y;->h(Lw8/a$a;Lw8/a$a;Lw8/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lw8/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lw7/y;->f(Lw8/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static e()Lw7/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lw7/y<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lw7/y;

    .line 2
    .line 3
    sget-object v1, Lw7/y;->c:Lw8/a$a;

    .line 4
    .line 5
    sget-object v2, Lw7/y;->d:Lw8/b;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lw7/y;-><init>(Lw8/a$a;Lw8/b;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static synthetic f(Lw8/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic g()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private static synthetic h(Lw8/a$a;Lw8/a$a;Lw8/b;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lw8/a$a;->a(Lw8/b;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Lw8/a$a;->a(Lw8/b;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static i(Lw8/b;)Lw7/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw8/b<",
            "TT;>;)",
            "Lw7/y<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lw7/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Lw7/y;-><init>(Lw8/a$a;Lw8/b;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public a(Lw8/a$a;)V
    .locals 3
    .param p1    # Lw8/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw7/y;->b:Lw8/b;

    .line 2
    .line 3
    sget-object v1, Lw7/y;->d:Lw8/b;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lw8/a$a;->a(Lw8/b;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lw7/y;->b:Lw8/b;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lw7/y;->a:Lw8/a$a;

    .line 19
    .line 20
    new-instance v2, Lw7/x;

    .line 21
    .line 22
    invoke-direct {v2, v1, p1}, Lw7/x;-><init>(Lw8/a$a;Lw8/a$a;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lw7/y;->a:Lw8/a$a;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lw8/a$a;->a(Lw8/b;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw7/y;->b:Lw8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lw8/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method j(Lw8/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw7/y;->b:Lw8/b;

    .line 2
    .line 3
    sget-object v1, Lw7/y;->d:Lw8/b;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lw7/y;->a:Lw8/a$a;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lw7/y;->a:Lw8/a$a;

    .line 12
    .line 13
    iput-object p1, p0, Lw7/y;->b:Lw8/b;

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {v0, p1}, Lw8/a$a;->a(Lw8/b;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "provide() can be called only once."

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
