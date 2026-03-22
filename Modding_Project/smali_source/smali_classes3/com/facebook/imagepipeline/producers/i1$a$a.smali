.class Lcom/facebook/imagepipeline/producers/i1$a$a;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/i1$a;-><init>(Lcom/facebook/imagepipeline/producers/i1;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;ZLg4/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/i1;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/i1$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/i1$a;Lcom/facebook/imagepipeline/producers/i1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i1$a$a;->b:Lcom/facebook/imagepipeline/producers/i1$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/i1$a$a;->a:Lcom/facebook/imagepipeline/producers/i1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ly3/k;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1$a$a;->b:Lcom/facebook/imagepipeline/producers/i1$a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/i1$a;->p(Lcom/facebook/imagepipeline/producers/i1$a;)Lg4/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ly3/k;->q()Lcom/facebook/imageformat/c;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/i1$a$a;->b:Lcom/facebook/imagepipeline/producers/i1$a;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/i1$a;->q(Lcom/facebook/imagepipeline/producers/i1$a;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-interface {v1, v2, v3}, Lg4/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Lg4/c;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lg4/c;

    .line 28
    .line 29
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/i1$a;->u(Lcom/facebook/imagepipeline/producers/i1$a;Ly3/k;ILg4/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/i1$a$a;->b:Lcom/facebook/imagepipeline/producers/i1$a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
