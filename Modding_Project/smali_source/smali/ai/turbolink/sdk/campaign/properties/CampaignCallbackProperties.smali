.class public final Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;
.super Ljava/lang/Object;
.source "CampaignCallbackProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private campaignLang:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private campaignTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private campaignUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private campaignUser:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignTitle:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignUrl:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignUser:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignLang:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getCampaignLang()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignLang:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignUser()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignUser:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaignLang"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignLang:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaignTitle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignTitle:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaignUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCampaignUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaignUser"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/CampaignCallbackProperties;->campaignUser:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method
