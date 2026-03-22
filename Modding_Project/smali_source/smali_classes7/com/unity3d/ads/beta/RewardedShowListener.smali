.class public interface abstract Lcom/unity3d/ads/beta/RewardedShowListener;
.super Ljava/lang/Object;
.source "ShowListener.kt"

# interfaces
.implements Lcom/unity3d/ads/beta/ShowListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity3d/ads/beta/ShowListener<",
        "Lcom/unity3d/ads/beta/RewardedAd;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract showDidReceiveReward(Lcom/unity3d/ads/beta/RewardedAd;)V
    .param p1    # Lcom/unity3d/ads/beta/RewardedAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
