.class public final Lu3/a$a;
.super Lcom/facebook/imagepipeline/producers/c;
.source "AbstractProducerToDataSourceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/a;->y()Lcom/facebook/imagepipeline/producers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic b:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lu3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/a$a;->b:Lu3/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/a$a;->b:Lu3/a;

    .line 2
    .line 3
    invoke-static {v0}, Lu3/a;->v(Lu3/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "throwable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu3/a$a;->b:Lu3/a;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lu3/a;->w(Lu3/a;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected h(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/a$a;->b:Lu3/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu3/a;->A()Lcom/facebook/imagepipeline/producers/j1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lu3/a;->D(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/c1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/a$a;->b:Lu3/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lu3/a;->x(Lu3/a;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
