.class public final enum Lai/turbolink/sdk/request/TurboLinkCampaignEventType;
.super Ljava/lang/Enum;
.source "ServerDefines.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/turbolink/sdk/request/TurboLinkCampaignEventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

.field public static final enum CODECAMPAIGN:Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

.field public static final enum PRECAMPAIGN:Lai/turbolink/sdk/request/TurboLinkCampaignEventType;


# instance fields
.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lai/turbolink/sdk/request/TurboLinkCampaignEventType;
    .locals 2

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->PRECAMPAIGN:Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 2
    .line 3
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->CODECAMPAIGN:Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "$campaign_reward_url"

    .line 5
    .line 6
    const-string v3, "PRECAMPAIGN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->PRECAMPAIGN:Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 12
    .line 13
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "$campaign_code_url"

    .line 17
    .line 18
    const-string v3, "CODECAMPAIGN"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->CODECAMPAIGN:Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 24
    .line 25
    invoke-static {}, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->$values()[Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->$VALUES:[Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->type:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/turbolink/sdk/request/TurboLinkCampaignEventType;
    .locals 1

    .line 1
    const-class v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/turbolink/sdk/request/TurboLinkCampaignEventType;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->$VALUES:[Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/turbolink/sdk/request/TurboLinkCampaignEventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/request/TurboLinkCampaignEventType;->type:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
