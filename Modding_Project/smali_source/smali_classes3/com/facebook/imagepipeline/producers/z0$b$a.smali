.class Lcom/facebook/imagepipeline/producers/z0$b$a;
.super Lcom/facebook/imagepipeline/producers/f;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/z0$b;-><init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/z0$a;Le4/c;Lcom/facebook/imagepipeline/producers/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/z0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/z0$b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/z0$b;Lcom/facebook/imagepipeline/producers/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0$b$a;->b:Lcom/facebook/imagepipeline/producers/z0$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/z0$b$a;->a:Lcom/facebook/imagepipeline/producers/z0;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b$a;->b:Lcom/facebook/imagepipeline/producers/z0$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/z0$b;->p(Lcom/facebook/imagepipeline/producers/z0$b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b$a;->b:Lcom/facebook/imagepipeline/producers/z0$b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/n;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
