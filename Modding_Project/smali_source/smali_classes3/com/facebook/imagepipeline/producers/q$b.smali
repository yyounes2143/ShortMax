.class final Lcom/facebook/imagepipeline/producers/q$b;
.super Lcom/facebook/imagepipeline/producers/q$d;
.source "DecodeProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic k:Lcom/facebook/imagepipeline/producers/q;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/q;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;ZI)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/producers/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/producers/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "ZI)V"
        }
    .end annotation

    .line 1
    const-string v0, "consumer"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "producerContext"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/q$b;->k:Lcom/facebook/imagepipeline/producers/q;

    .line 12
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/facebook/imagepipeline/producers/q$d;-><init>(Lcom/facebook/imagepipeline/producers/q;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;ZI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected declared-synchronized I(Ly3/k;I)Z
    .locals 1
    .param p1    # Ly3/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/c;->e(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/q$d;->I(Ly3/k;I)Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method protected w(Ly3/k;)I
    .locals 1
    .param p1    # Ly3/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "encodedImage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ly3/k;->u()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method protected y()Ly3/p;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0, v0}, Ly3/o;->d(IZZ)Ly3/p;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "of(...)"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
