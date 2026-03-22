.class public abstract Lcom/facebook/imagepipeline/producers/s0;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/s0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/facebook/imagepipeline/producers/s0<",
            "TK;TT;>.a;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/producers/s0;-><init>(Lcom/facebook/imagepipeline/producers/b1;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/s0;->b:Lcom/facebook/imagepipeline/producers/b1;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/s0;->a:Ljava/util/Map;

    .line 5
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/s0;->c:Z

    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/s0;->d:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/s0;->e:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic c(Lcom/facebook/imagepipeline/producers/s0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/s0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/s0;->b:Lcom/facebook/imagepipeline/producers/b1;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/facebook/imagepipeline/producers/s0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/s0;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic f(Lcom/facebook/imagepipeline/producers/s0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/s0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private declared-synchronized h(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/s0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/s0<",
            "TK;TT;>.a;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/s0$a;

    .line 3
    .line 4
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/s0$a;-><init>(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/s0;->a:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "MultiplexProducer#produceResults"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/s0;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/producers/s0;->j(Lcom/facebook/imagepipeline/producers/c1;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/s0;->i(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/s0$a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/s0;->h(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/s0$a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    goto :goto_1

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/s0$a;->h(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->u()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Lcom/facebook/imagepipeline/producers/s0$a;->c(Lcom/facebook/imagepipeline/producers/s0$a;Lcom/facebook/common/util/TriState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {}, Lf4/b;->d()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lf4/b;->b()V

    .line 71
    .line 72
    .line 73
    :cond_4
    return-void

    .line 74
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :goto_3
    invoke-static {}, Lf4/b;->d()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    invoke-static {}, Lf4/b;->b()V

    .line 83
    .line 84
    .line 85
    :cond_5
    throw p1
.end method

.method protected abstract g(Ljava/io/Closeable;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method protected declared-synchronized i(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/s0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/s0<",
            "TK;TT;>.a;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/s0;->a:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/facebook/imagepipeline/producers/s0$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method protected abstract j(Lcom/facebook/imagepipeline/producers/c1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")TK;"
        }
    .end annotation
.end method

.method protected declared-synchronized k(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/s0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/imagepipeline/producers/s0<",
            "TK;TT;>.a;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/s0;->a:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/s0;->a:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method
