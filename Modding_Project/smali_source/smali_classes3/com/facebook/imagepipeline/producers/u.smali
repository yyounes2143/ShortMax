.class public abstract Lcom/facebook/imagepipeline/producers/u;
.super Lcom/facebook/imagepipeline/producers/c;
.source "DelegatingConsumer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/producers/c<",
        "TI;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Lcom/facebook/imagepipeline/producers/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/n<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/n;)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/producers/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "consumer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/u;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/n;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/n;->onFailure(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/n;->c(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o()Lcom/facebook/imagepipeline/producers/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/n<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 2
    .line 3
    return-object v0
.end method
