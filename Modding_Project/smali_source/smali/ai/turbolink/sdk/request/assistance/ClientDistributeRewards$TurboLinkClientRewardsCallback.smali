.class public interface abstract Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;
.super Ljava/lang/Object;
.source "ClientDistributeRewards.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TurboLinkClientRewardsCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;)V
    .param p1    # Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
