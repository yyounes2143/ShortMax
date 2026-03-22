.class public Lu3/c;
.super Lu3/a;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/a<",
        "Lo2/a<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/j1;",
            "La4/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lu3/a;-><init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static F(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)Lcom/facebook/datasource/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/j1;",
            "La4/d;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Lo2/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "CloseableProducerToDataSourceAdapter#create"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lu3/c;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1, p2}, Lu3/c;-><init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lf4/b;->d()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lf4/b;->b()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic D(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/c1;)V
    .locals 0

    .line 1
    check-cast p1, Lo2/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lu3/c;->H(Lo2/a;ILcom/facebook/imagepipeline/producers/c1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected E(Lo2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public G()Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo2/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo2/a;

    .line 6
    .line 7
    invoke-static {v0}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected H(Lo2/a;ILcom/facebook/imagepipeline/producers/c1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "TT;>;I",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1, p2, p3}, Lu3/a;->D(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/c1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lo2/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu3/c;->E(Lo2/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu3/c;->G()Lo2/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
