.class public interface abstract Lcom/facebook/imagepipeline/producers/c1;
.super Ljava/lang/Object;
.source "ProducerContext.kt"

# interfaces
.implements Lcom/facebook/fresco/middleware/HasExtraData;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract d()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract k()Lt3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract l()Lcom/facebook/imagepipeline/producers/e1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract m()Lcom/facebook/imagepipeline/common/Priority;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract o()Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract p(Lcom/facebook/imagepipeline/producers/d1;)V
    .param p1    # Lcom/facebook/imagepipeline/producers/d1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract q(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract r()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract s(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract t()Z
.end method

.method public abstract u()Z
.end method

.method public abstract v()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
