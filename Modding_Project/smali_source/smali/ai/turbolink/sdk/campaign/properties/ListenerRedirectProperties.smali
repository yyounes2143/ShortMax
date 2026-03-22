.class public final Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
.super Ljava/lang/Object;
.source "ListenerRedirectProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private appUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private campaignId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field private rewardInfo:Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I

.field private user:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignTitle:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignLang:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignUrl:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->user:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->type:I

    .line 18
    .line 19
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->transId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->appUrl:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getAppUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->appUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignLang()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignLang:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardInfo()Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->rewardInfo:Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->transId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->user:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAppUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "appUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->appUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCampaignId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaignId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignId:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignLang:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignTitle:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->campaignUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setRewardInfo(Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
    .locals 0
    .param p1    # Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->rewardInfo:Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setTransId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "transId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->transId:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setType(I)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->type:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRedirectProperties;->user:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method
