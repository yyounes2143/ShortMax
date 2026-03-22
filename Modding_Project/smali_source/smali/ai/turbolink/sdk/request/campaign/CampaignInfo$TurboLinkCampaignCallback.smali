.class public interface abstract Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;
.super Ljava/lang/Object;
.source "CampaignInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/request/campaign/CampaignInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TurboLinkCampaignCallback"
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

.method public abstract onSuccess(Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;)V
    .param p1    # Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
