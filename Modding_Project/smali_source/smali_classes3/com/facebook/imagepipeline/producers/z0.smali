.class public Lcom/facebook/imagepipeline/producers/z0;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/z0$b;,
        Lcom/facebook/imagepipeline/producers/z0$c;,
        Lcom/facebook/imagepipeline/producers/z0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "Lo2/a<",
        "Ly3/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lq3/d;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Lq3/d;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;",
            "Lq3/d;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/facebook/imagepipeline/producers/b1;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0;->a:Lcom/facebook/imagepipeline/producers/b1;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/z0;->b:Lq3/d;

    .line 13
    .line 14
    invoke-static {p3}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0;->c:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    return-void
.end method

.method static bridge synthetic c(Lcom/facebook/imagepipeline/producers/z0;)Lq3/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/z0;->b:Lq3/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/facebook/imagepipeline/producers/z0;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/z0;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Le4/b;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-static {v6}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v9, Lcom/facebook/imagepipeline/producers/z0$a;

    .line 17
    .line 18
    move-object v0, v9

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v4, v6

    .line 22
    move-object v5, p2

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/z0$a;-><init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/e1;Le4/b;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 24
    .line 25
    .line 26
    instance-of p1, v6, Le4/c;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/facebook/imagepipeline/producers/z0$b;

    .line 31
    .line 32
    move-object v10, v6

    .line 33
    check-cast v10, Le4/c;

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    move-object v7, p1

    .line 37
    move-object v8, p0

    .line 38
    move-object v11, p2

    .line 39
    invoke-direct/range {v7 .. v12}, Lcom/facebook/imagepipeline/producers/z0$b;-><init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/z0$a;Le4/c;Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/imagepipeline/producers/a1;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/producers/z0$c;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p1, p0, v9, v0}, Lcom/facebook/imagepipeline/producers/z0$c;-><init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/z0$a;Lcom/facebook/imagepipeline/producers/a1;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0;->a:Lcom/facebook/imagepipeline/producers/b1;

    .line 50
    .line 51
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
