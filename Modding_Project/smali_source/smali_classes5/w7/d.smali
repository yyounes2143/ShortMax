.class public interface abstract Lw7/d;
.super Ljava/lang/Object;
.source "ComponentContainer.java"


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lw7/a0;->b(Ljava/lang/Class;)Lw7/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lw7/a0;->b(Ljava/lang/Class;)Lw7/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lw7/d;->c(Lw7/a0;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c(Lw7/a0;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a0<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lw7/d;->g(Lw7/a0;)Lw8/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lw8/b;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/Set;

    .line 10
    .line 11
    return-object p1
.end method

.method public abstract d(Lw7/a0;)Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a0<",
            "TT;>;)",
            "Lw8/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public e(Ljava/lang/Class;)Lw8/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lw8/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lw7/a0;->b(Ljava/lang/Class;)Lw7/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lw7/d;->d(Lw7/a0;)Lw8/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public abstract f(Lw7/a0;)Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a0<",
            "TT;>;)",
            "Lw8/a<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract g(Lw7/a0;)Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a0<",
            "TT;>;)",
            "Lw8/b<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public h(Lw7/a0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lw7/d;->d(Lw7/a0;)Lw8/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lw8/b;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public i(Ljava/lang/Class;)Lw8/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lw8/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lw7/a0;->b(Ljava/lang/Class;)Lw7/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lw7/d;->f(Lw7/a0;)Lw8/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
