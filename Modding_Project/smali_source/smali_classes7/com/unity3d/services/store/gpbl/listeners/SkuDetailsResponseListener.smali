.class public interface abstract Lcom/unity3d/services/store/gpbl/listeners/SkuDetailsResponseListener;
.super Ljava/lang/Object;
.source "SkuDetailsResponseListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onSkuDetailsUpdated(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .param p1    # Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;",
            ">;)V"
        }
    .end annotation
.end method
