.class public final Lcom/facebook/imagepipeline/producers/f0;
.super Lcom/facebook/imagepipeline/producers/e0;
.source "InternalRequestListener.kt"

# interfaces
.implements La4/d;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final c:La4/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:La4/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(La4/e;La4/d;)V
    .locals 0
    .param p1    # La4/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # La4/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/e0;-><init>(Lcom/facebook/imagepipeline/producers/f1;Lcom/facebook/imagepipeline/producers/e1;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f0;->c:La4/e;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/f0;->d:La4/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 5
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "producerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->c:La4/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->d()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->getId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->u()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-interface {v0, v1, v2, v3, v4}, La4/e;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->d:La4/d;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, p1}, La4/d;->c(Lcom/facebook/imagepipeline/producers/c1;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public e(Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 4
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "producerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->c:La4/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->u()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-interface {v0, v1, v2, v3}, La4/e;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->d:La4/d;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1}, La4/d;->e(Lcom/facebook/imagepipeline/producers/c1;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public g(Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "producerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->c:La4/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, La4/e;->k(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->d:La4/d;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1}, La4/d;->g(Lcom/facebook/imagepipeline/producers/c1;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public i(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "producerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->c:La4/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->u()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-interface {v0, v1, v2, p2, v3}, La4/e;->j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->d:La4/d;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, La4/d;->i(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
