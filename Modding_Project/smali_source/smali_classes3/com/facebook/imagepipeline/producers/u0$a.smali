.class Lcom/facebook/imagepipeline/producers/u0$a;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/v0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/c0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/u0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/u0$a;->b:Lcom/facebook/imagepipeline/producers/u0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/u0$a;->a:Lcom/facebook/imagepipeline/producers/c0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u0$a;->b:Lcom/facebook/imagepipeline/producers/u0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/u0$a;->a:Lcom/facebook/imagepipeline/producers/c0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/u0;->c(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/c0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
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
    const-string v0, "NetworkFetcher->onResponse"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u0$a;->b:Lcom/facebook/imagepipeline/producers/u0;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/u0$a;->a:Lcom/facebook/imagepipeline/producers/c0;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/producers/u0;->m(Lcom/facebook/imagepipeline/producers/c0;Ljava/io/InputStream;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lf4/b;->d()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lf4/b;->b()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u0$a;->b:Lcom/facebook/imagepipeline/producers/u0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/u0$a;->a:Lcom/facebook/imagepipeline/producers/c0;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/c0;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
