.class Lcom/facebook/imagepipeline/producers/d0$b;
.super Lcom/facebook/imagepipeline/producers/f;
.source "HttpUrlConnectionNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/d0;->i(Lcom/facebook/imagepipeline/producers/d0$c;Lcom/facebook/imagepipeline/producers/v0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/v0$a;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/d0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/d0;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/producers/v0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/d0$b;->c:Lcom/facebook/imagepipeline/producers/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/d0$b;->a:Ljava/util/concurrent/Future;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/d0$b;->b:Lcom/facebook/imagepipeline/producers/v0$a;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/f;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0$b;->a:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0$b;->b:Lcom/facebook/imagepipeline/producers/v0$a;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/v0$a;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
