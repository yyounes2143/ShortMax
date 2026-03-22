.class public final Lcom/unity3d/ads/core/data/repository/AndroidDeveloperConsentRepository;
.super Ljava/lang/Object;
.source "AndroidDeveloperConsentRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final developerConsent:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "developerConsentDataSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;->getDeveloperConsent()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidDeveloperConsentRepository;->developerConsent:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getDeveloperConsent()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidDeveloperConsentRepository;->developerConsent:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    .line 2
    .line 3
    return-object v0
.end method
