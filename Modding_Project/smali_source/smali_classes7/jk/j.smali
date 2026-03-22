.class public final Ljk/j;
.super Ljava/lang/Object;
.source "FrescoExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkk/f;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lkk/f;->i(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lkk/f;->j(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
