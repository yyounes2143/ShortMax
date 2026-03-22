.class public interface abstract Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;
.super Ljava/lang/Object;
.source "BillingClientStateListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onBillingServiceDisconnected()V
.end method

.method public abstract onBillingSetupFinished(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;)V
    .param p1    # Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
