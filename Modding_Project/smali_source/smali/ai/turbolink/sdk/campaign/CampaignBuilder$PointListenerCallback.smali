.class public interface abstract Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;
.super Ljava/lang/Object;
.source "CampaignBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/campaign/CampaignBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PointListenerCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
