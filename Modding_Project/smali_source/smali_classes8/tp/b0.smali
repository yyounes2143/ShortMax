.class public abstract Ltp/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/y;
.implements Ltp/u;
.implements Ltp/w;
.implements Ltp/v;
.implements Ltp/a0;
.implements Ltp/z;
.implements Ltp/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp/b0$b;
    }
.end annotation


# instance fields
.field private final a:Ljq/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltp/b0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljq/b;)V
    .locals 0
    .param p1    # Ljq/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltp/b0;->a:Ljq/b;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ltp/b0;->b:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic f(Ltp/b0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ltp/b0;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 6
    iget-object v0, p0, Ltp/b0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltp/b0$b;

    .line 7
    invoke-virtual {v1}, Ltp/b0$b;->a()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ltp/b0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 3
    new-instance v0, Ltp/b0$a;

    invoke-direct {v0, p0}, Ltp/b0$a;-><init>(Ltp/b0;)V

    .line 4
    iget-object v1, p0, Ltp/b0;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, p1, p2}, Ltp/b0$b;->c(J)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(JJF)V
    .locals 0

    .line 2
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltp/b0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Ltp/b0$b;

    .line 18
    .line 19
    invoke-virtual {v1}, Ltp/b0$b;->d()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltp/b0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Ltp/b0$b;

    .line 18
    .line 19
    invoke-virtual {v1}, Ltp/b0$b;->a()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public r()Ljq/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/b0;->a:Ljq/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract s()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
