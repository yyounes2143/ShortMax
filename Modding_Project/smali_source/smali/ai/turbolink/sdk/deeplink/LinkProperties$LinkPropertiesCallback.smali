.class public interface abstract Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;
.super Ljava/lang/Object;
.source "LinkProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/deeplink/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LinkPropertiesCallback"
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

.method public abstract onSuccess(Lai/turbolink/sdk/deeplink/LinkResponse;)V
    .param p1    # Lai/turbolink/sdk/deeplink/LinkResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
