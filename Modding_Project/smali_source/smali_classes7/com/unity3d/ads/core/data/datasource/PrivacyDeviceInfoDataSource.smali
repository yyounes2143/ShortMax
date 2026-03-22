.class public interface abstract Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
.super Ljava/lang/Object;
.source "PrivacyDeviceInfoDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract fetch(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .param p1    # Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
