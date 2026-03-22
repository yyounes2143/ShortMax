.class Lcom/facebook/imagepipeline/producers/z0$b;
.super Lcom/facebook/imagepipeline/producers/u;
.source "PostprocessorProducer.java"

# interfaces
.implements Le4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/u<",
        "Lo2/a<",
        "Ly3/e;",
        ">;",
        "Lo2/a<",
        "Ly3/e;",
        ">;>;",
        "Le4/d;"
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/facebook/imagepipeline/producers/z0;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/z0$a;Le4/c;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0$b;->e:Lcom/facebook/imagepipeline/producers/z0;

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/u;-><init>(Lcom/facebook/imagepipeline/producers/n;)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/z0$b;->c:Z

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/z0$b;->d:Lo2/a;

    .line 6
    invoke-interface {p3, p0}, Le4/c;->c(Le4/d;)V

    .line 7
    new-instance p2, Lcom/facebook/imagepipeline/producers/z0$b$a;

    invoke-direct {p2, p0, p1}, Lcom/facebook/imagepipeline/producers/z0$b$a;-><init>(Lcom/facebook/imagepipeline/producers/z0$b;Lcom/facebook/imagepipeline/producers/z0;)V

    invoke-interface {p4, p2}, Lcom/facebook/imagepipeline/producers/c1;->p(Lcom/facebook/imagepipeline/producers/d1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/z0$a;Le4/c;Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/imagepipeline/producers/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/z0$b;-><init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/z0$a;Le4/c;Lcom/facebook/imagepipeline/producers/c1;)V

    return-void
.end method

.method static bridge synthetic p(Lcom/facebook/imagepipeline/producers/z0$b;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/z0$b;->q()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private q()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->d:Lo2/a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/z0$b;->d:Lo2/a;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/z0$b;->c:Z

    .line 18
    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method private s(Lo2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Ly3/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->d:Lo2/a;

    .line 11
    .line 12
    invoke-static {p1}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0$b;->d:Lo2/a;

    .line 17
    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method private t()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->d:Lo2/a;

    .line 11
    .line 12
    invoke-static {v0}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
.end method


# virtual methods
.method protected f()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/z0$b;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/n;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/z0$b;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/n;->onFailure(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lo2/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/z0$b;->r(Lo2/a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r(Lo2/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Ly3/e;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/c;->e(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/z0$b;->s(Lo2/a;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/z0$b;->t()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
