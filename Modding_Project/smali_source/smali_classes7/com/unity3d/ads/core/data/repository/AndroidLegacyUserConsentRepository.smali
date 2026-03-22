.class public final Lcom/unity3d/ads/core/data/repository/AndroidLegacyUserConsentRepository;
.super Ljava/lang/Object;
.source "AndroidLegacyUserConsentRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final legacyUserConsentDataSource:Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "legacyUserConsentDataSource"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidLegacyUserConsentRepository;->legacyUserConsentDataSource:Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getLegacyFlowUserConsent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidLegacyUserConsentRepository;->legacyUserConsentDataSource:Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;->getPrivacyData()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
