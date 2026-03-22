.class public final Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;
.super Ljava/lang/Object;
.source "CampaignLaunchTime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;->INSTANCE:Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getTURBOLINK_BASE_URL_V2()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lai/turbolink/sdk/request/ServerRequestPath;->GET_CAMPAIGN_LAUNCH_TIME:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 23
    .line 24
    invoke-virtual {v1}, Lai/turbolink/sdk/request/ServerRequestPath;->getPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;->url:Ljava/lang/String;

    .line 36
    .line 37
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


# virtual methods
.method public final launch(Ljava/lang/String;JJ)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 12
    .line 13
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getPROJECT_ID()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "project_id"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v1, "campaign_hash"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string p1, "static_used_time"

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string p1, "render_used_time"

    .line 33
    .line 34
    invoke-virtual {v0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 38
    .line 39
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "user_id"

    .line 44
    .line 45
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    sget-object p1, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 49
    .line 50
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SessionObj;->setAndGetSessionId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "session_id"

    .line 55
    .line 56
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 60
    .line 61
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getCampaignEventCallback()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    const-string p3, "campaign_event_callback"

    .line 66
    .line 67
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string p2, "campaign_login_callback"

    .line 71
    .line 72
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getCampaignLoginCallback()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string p2, "campaign_redirect_callback"

    .line 80
    .line 81
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getCampaignRedirectCallback()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    const-string p2, "campaign_set_delay"

    .line 89
    .line 90
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getCampaignSetDelay()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string p2, "campaign_social_click_callback"

    .line 98
    .line 99
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getCampaignSocialClickCallback()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    const-string p2, "navigation_bar_type"

    .line 107
    .line 108
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getNavigationBarType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    const-string p2, "campaign_load_url"

    .line 116
    .line 117
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getCampaignLoadUrl()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    sget-object p1, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 125
    .line 126
    invoke-virtual {p1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getOS()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string p2, "os"

    .line 131
    .line 132
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    sget-object p1, Lai/turbolink/sdk/request/ServerRequestSync;->INSTANCE:Lai/turbolink/sdk/request/ServerRequestSync;

    .line 136
    .line 137
    sget-object p2, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;->url:Ljava/lang/String;

    .line 138
    .line 139
    new-instance p3, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime$launch$1;

    .line 140
    .line 141
    invoke-direct {p3}, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime$launch$1;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2, v0, p3}, Lai/turbolink/sdk/request/ServerRequestSync;->doFreedomReq(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
