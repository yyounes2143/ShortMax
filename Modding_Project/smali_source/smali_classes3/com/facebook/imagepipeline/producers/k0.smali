.class public abstract Lcom/facebook/imagepipeline/producers/k0;
.super Ljava/lang/Object;
.source "LocalFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "Ly3/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ln2/g;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Ln2/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/k0;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/k0;->b:Ln2/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    const-string v0, "local"

    .line 10
    .line 11
    const-string v1, "fetch"

    .line 12
    .line 13
    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/c1;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v9, Lcom/facebook/imagepipeline/producers/k0$a;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/k0;->f()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    move-object v0, v9

    .line 23
    move-object v1, p0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, v7

    .line 26
    move-object v4, p2

    .line 27
    move-object v8, p2

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/k0$a;-><init>(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/facebook/imagepipeline/producers/k0$b;

    .line 32
    .line 33
    invoke-direct {p1, p0, v9}, Lcom/facebook/imagepipeline/producers/k0$b;-><init>(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/k1;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/c1;->p(Lcom/facebook/imagepipeline/producers/d1;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/k0;->a:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method protected c(Ljava/io/InputStream;I)Ly3/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/k0;->b:Ln2/g;

    .line 5
    .line 6
    invoke-interface {p2, p1}, Ln2/g;->a(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lo2/a;->w(Ljava/io/Closeable;)Lo2/a;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    move-object v0, p2

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p2

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k0;->b:Ln2/g;

    .line 19
    .line 20
    invoke-interface {v1, p1, p2}, Ln2/g;->e(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Lo2/a;->w(Ljava/io/Closeable;)Lo2/a;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    new-instance p2, Ly3/k;

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ly3/k;-><init>(Lo2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lk2/b;->b(Ljava/io/InputStream;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 38
    .line 39
    .line 40
    return-object p2

    .line 41
    :goto_2
    invoke-static {p1}, Lk2/b;->b(Ljava/io/InputStream;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 45
    .line 46
    .line 47
    throw p2
.end method

.method protected abstract d(Lcom/facebook/imagepipeline/request/ImageRequest;)Ly3/k;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected e(Ljava/io/InputStream;I)Ly3/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/k0;->c(Ljava/io/InputStream;I)Ly3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected abstract f()Ljava/lang/String;
.end method
