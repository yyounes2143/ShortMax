.class public final Lai/turbolink/sdk/request/campaign/CampaignInfo;
.super Ljava/lang/Object;
.source "CampaignInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private campaignId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private linkHashId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "campaignId"

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getTURBOLINK_BASE_URL_V2()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v1, Lai/turbolink/sdk/request/ServerRequestPath;->GET_CAMPAIGN_INFO:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 24
    .line 25
    invoke-virtual {v1}, Lai/turbolink/sdk/request/ServerRequestPath;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->url:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->campaignId:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p2, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->linkHashId:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final build(Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;)V
    .locals 3
    .param p1    # Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 4
    .line 5
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getPROJECT_ID()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "project_id"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v0, "campaign_id"

    .line 22
    .line 23
    iget-object v1, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->campaignId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->linkHashId:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    :cond_1
    const-string v1, "link_hash"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestSync;->INSTANCE:Lai/turbolink/sdk/request/ServerRequestSync;

    .line 40
    .line 41
    iget-object v1, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->url:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p0, Lai/turbolink/sdk/request/campaign/CampaignInfo;->callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1, v2}, Lai/turbolink/sdk/request/ServerRequestSync;->doFreedomReq(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
