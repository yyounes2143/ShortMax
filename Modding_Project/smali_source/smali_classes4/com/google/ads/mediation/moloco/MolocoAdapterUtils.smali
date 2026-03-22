.class public final Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;
.super Ljava/lang/Object;
.source "MolocoAdapterUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;->INSTANCE:Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "4.0.0.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getAdapterVersion$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final setMolocoIsAgeRestricted(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;->INSTANCE:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;->getPrivacySettings()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isDoNotSell()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;->getPrivacySettings()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isUserConsent()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v2, v0, p0, v1}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;->setPrivacy(Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
