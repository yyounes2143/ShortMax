.class public interface abstract Lcom/unity3d/ads/core/domain/AwaitInitialization;
.super Ljava/lang/Object;
.source "AwaitInitialization.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AwaitInitialization$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract invoke(JLrs/c;)Ljava/lang/Object;
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/InitializationState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
