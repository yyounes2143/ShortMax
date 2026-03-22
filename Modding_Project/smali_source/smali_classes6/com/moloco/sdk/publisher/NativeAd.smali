.class public interface abstract Lcom/moloco/sdk/publisher/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/AdLoad;
.implements Lcom/moloco/sdk/publisher/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/publisher/NativeAd$Assets;,
        Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getAssets()Lcom/moloco/sdk/publisher/NativeAd$Assets;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getInteractionListener()Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract handleGeneralAdClick()V
.end method

.method public abstract handleImpression()V
.end method

.method public abstract setInteractionListener(Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;)V
    .param p1    # Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
