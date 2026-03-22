.class Lcom/facebook/imagepipeline/memory/c$b;
.super Lcom/facebook/imagepipeline/memory/d;
.source "FlexByteArrayPool.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ln2/c;Lb4/e0;Lb4/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/d;-><init>(Ln2/c;Lb4/e0;Lb4/f0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method w(I)Lcom/facebook/imagepipeline/memory/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/a<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/f;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/d;->o(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lb4/e0;

    .line 8
    .line 9
    iget v1, v1, Lb4/e0;->g:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/f;-><init>(III)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
