.class public Lcom/facebook/imagepipeline/producers/y;
.super Lcom/facebook/imagepipeline/producers/s0;
.source "EncodedCacheKeyMultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/s0<",
        "Landroid/util/Pair<",
        "Lf2/a;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Ly3/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lr3/j;


# direct methods
.method public constructor <init>(Lr3/j;ZLcom/facebook/imagepipeline/producers/b1;)V
    .locals 2

    .line 1
    const-string v0, "EncodedCacheKeyMultiplexProducer"

    .line 2
    .line 3
    const-string v1, "multiplex_enc_cnt"

    .line 4
    .line 5
    invoke-direct {p0, p3, v0, v1, p2}, Lcom/facebook/imagepipeline/producers/s0;-><init>(Lcom/facebook/imagepipeline/producers/b1;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/y;->f:Lr3/j;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 1
    check-cast p1, Ly3/k;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/y;->l(Ly3/k;)Ly3/k;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic j(Lcom/facebook/imagepipeline/producers/c1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/y;->m(Lcom/facebook/imagepipeline/producers/c1;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l(Ly3/k;)Ly3/k;
    .locals 0

    .line 1
    invoke-static {p1}, Ly3/k;->g(Ly3/k;)Ly3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected m(Lcom/facebook/imagepipeline/producers/c1;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")",
            "Landroid/util/Pair<",
            "Lf2/a;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->f:Lr3/j;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v0, v1, v2}, Lr3/j;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->v()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
