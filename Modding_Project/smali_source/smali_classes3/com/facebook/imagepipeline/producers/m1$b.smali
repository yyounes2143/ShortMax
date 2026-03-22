.class public final Lcom/facebook/imagepipeline/producers/m1$b;
.super Lcom/facebook/imagepipeline/producers/f;
.source "ThreadHandoffProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/m1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/k1<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/facebook/imagepipeline/producers/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/m1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/k1;Lcom/facebook/imagepipeline/producers/m1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/k1<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/m1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m1$b;->a:Lcom/facebook/imagepipeline/producers/k1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/m1$b;->b:Lcom/facebook/imagepipeline/producers/m1;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m1$b;->a:Lcom/facebook/imagepipeline/producers/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Li2/h;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m1$b;->b:Lcom/facebook/imagepipeline/producers/m1;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/m1;->d()Lcom/facebook/imagepipeline/producers/n1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/m1$b;->a:Lcom/facebook/imagepipeline/producers/k1;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/n1;->a(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
