.class public Lcom/facebook/imagepipeline/producers/c0;
.super Ljava/lang/Object;
.source "FetchState.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/c1;

.field private c:J

.field private d:I

.field private e:Ls3/b;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/c0;->a:Lcom/facebook/imagepipeline/producers/n;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/imagepipeline/producers/c1;

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/c0;->c:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/producers/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->a:Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/producers/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/c0;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()Lcom/facebook/imagepipeline/producers/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/producers/c0;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Ls3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->e:Ls3/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/imagepipeline/producers/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/c0;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/producers/c0;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public j(Ls3/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/c0;->e:Ls3/b;

    .line 2
    .line 3
    return-void
.end method
