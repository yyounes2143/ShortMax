.class public final Lcom/facebook/imagepipeline/producers/m1$c;
.super Lcom/facebook/imagepipeline/producers/k1;
.source "ThreadHandoffProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/m1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/k1<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic f:Lcom/facebook/imagepipeline/producers/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/facebook/imagepipeline/producers/e1;

.field final synthetic h:Lcom/facebook/imagepipeline/producers/c1;

.field final synthetic i:Lcom/facebook/imagepipeline/producers/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/m1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/imagepipeline/producers/m1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/e1;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Lcom/facebook/imagepipeline/producers/m1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m1$c;->f:Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/m1$c;->g:Lcom/facebook/imagepipeline/producers/e1;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/m1$c;->h:Lcom/facebook/imagepipeline/producers/c1;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/m1$c;->i:Lcom/facebook/imagepipeline/producers/m1;

    .line 8
    .line 9
    const-string p4, "BackgroundThreadHandoffProducer"

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/k1;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m1$c;->g:Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m1$c;->h:Lcom/facebook/imagepipeline/producers/c1;

    .line 4
    .line 5
    const-string v1, "BackgroundThreadHandoffProducer"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m1$c;->i:Lcom/facebook/imagepipeline/producers/m1;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/m1;->c()Lcom/facebook/imagepipeline/producers/b1;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m1$c;->f:Lcom/facebook/imagepipeline/producers/n;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/m1$c;->h:Lcom/facebook/imagepipeline/producers/c1;

    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
