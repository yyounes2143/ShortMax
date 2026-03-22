.class public Lcom/facebook/imagepipeline/producers/e0;
.super Ljava/lang/Object;
.source "InternalProducerListener.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/e1;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/f1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/e1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/f1;Lcom/facebook/imagepipeline/producers/e1;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/producers/f1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/producers/e1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

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
    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/f1;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/e1;->a(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

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
    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/e1;->b(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public d(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

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
    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/f1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/e1;->d(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/c1;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/f1;->f(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/e1;->f(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_1
    move-object v0, v1

    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 p1, 0x0

    .line 54
    :goto_1
    return p1
.end method

.method public h(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

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
    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/f1;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/e1;->h(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

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
    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/f1;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/e1;->j(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public k(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/producers/c1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/c1;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->a:Lcom/facebook/imagepipeline/producers/f1;

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
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/f1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0;->b:Lcom/facebook/imagepipeline/producers/e1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/e1;->k(Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
