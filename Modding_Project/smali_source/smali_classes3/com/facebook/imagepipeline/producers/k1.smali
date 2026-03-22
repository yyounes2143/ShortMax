.class public abstract Lcom/facebook/imagepipeline/producers/k1;
.super Li2/h;
.source "StatefulProducerRunnable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li2/h<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Lcom/facebook/imagepipeline/producers/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/n<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/producers/e1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/producers/c1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/producers/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/producers/e1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/e1;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Ljava/lang/String;",
            ")V"
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
    const-string v0, "producerListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "producerContext"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "producerName"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Li2/h;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/k1;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/k1;->c:Lcom/facebook/imagepipeline/producers/e1;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/k1;->d:Lcom/facebook/imagepipeline/producers/c1;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/k1;->e:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p2, p3, p4}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method protected e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k1;->c:Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k1;->d:Lcom/facebook/imagepipeline/producers/c1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k1;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/k1;->h()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/e1;->d(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k1;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/n;->a()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected f(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k1;->c:Lcom/facebook/imagepipeline/producers/e1;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k1;->d:Lcom/facebook/imagepipeline/producers/c1;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k1;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/k1;->i(Ljava/lang/Exception;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/e1;->k(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k1;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/n;->onFailure(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected g(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k1;->c:Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k1;->d:Lcom/facebook/imagepipeline/producers/c1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/k1;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/k1;->j(Ljava/lang/Object;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k1;->b:Lcom/facebook/imagepipeline/producers/n;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method protected h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected i(Ljava/lang/Exception;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method protected j(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
