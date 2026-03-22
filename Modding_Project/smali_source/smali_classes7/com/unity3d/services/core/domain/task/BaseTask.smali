.class public interface abstract Lcom/unity3d/services/core/domain/task/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/domain/task/BaseTask$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/unity3d/services/core/domain/task/BaseParams;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/unity3d/services/core/di/IServiceComponent;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract doWork-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lcom/unity3d/services/core/domain/task/BaseParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lcom/unity3d/services/core/domain/task/BaseParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
