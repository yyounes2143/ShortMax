.class public final enum Lai/turbolink/sdk/campaign/WebviewListener;
.super Ljava/lang/Enum;
.source "CampaignDefines.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/turbolink/sdk/campaign/WebviewListener;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_CLIENT_REWARDS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_EVENT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_LOGIN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_POINTS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_REDIRECT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_REG_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_SHARE_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

.field public static final enum LINK_USE_BROWSER_OPEN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;


# instance fields
.field private listener:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lai/turbolink/sdk/campaign/WebviewListener;
    .locals 8

    .line 1
    sget-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_SHARE_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 2
    .line 3
    sget-object v1, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_LOGIN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 4
    .line 5
    sget-object v2, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_EVENT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 6
    .line 7
    sget-object v3, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_POINTS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 8
    .line 9
    sget-object v4, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_REG_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 10
    .line 11
    sget-object v5, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_REDIRECT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 12
    .line 13
    sget-object v6, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_USE_BROWSER_OPEN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 14
    .line 15
    sget-object v7, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_CLIENT_REWARDS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lai/turbolink/sdk/campaign/WebviewListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "linkShareListener"

    .line 5
    .line 6
    const-string v3, "LINK_SHARE_LISTENER"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_SHARE_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 12
    .line 13
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "linkLoginListener"

    .line 17
    .line 18
    const-string v3, "LINK_LOGIN_LISTENER"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_LOGIN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 24
    .line 25
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "linkEventListener"

    .line 29
    .line 30
    const-string v3, "LINK_EVENT_LISTENER"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_EVENT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 36
    .line 37
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "linkPointsListener"

    .line 41
    .line 42
    const-string v3, "LINK_POINTS_LISTENER"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_POINTS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 48
    .line 49
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "linkRegListener"

    .line 53
    .line 54
    const-string v3, "LINK_REG_LISTENER"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_REG_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 60
    .line 61
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "linkRedirectListener"

    .line 65
    .line 66
    const-string v3, "LINK_REDIRECT_LISTENER"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_REDIRECT_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 72
    .line 73
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "linkUseBrowserOpenListener"

    .line 77
    .line 78
    const-string v3, "LINK_USE_BROWSER_OPEN_LISTENER"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_USE_BROWSER_OPEN_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 84
    .line 85
    new-instance v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "linkClientRewardsListener"

    .line 89
    .line 90
    const-string v3, "LINK_CLIENT_REWARDS_LISTENER"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/campaign/WebviewListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->LINK_CLIENT_REWARDS_LISTENER:Lai/turbolink/sdk/campaign/WebviewListener;

    .line 96
    .line 97
    invoke-static {}, Lai/turbolink/sdk/campaign/WebviewListener;->$values()[Lai/turbolink/sdk/campaign/WebviewListener;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->$VALUES:[Lai/turbolink/sdk/campaign/WebviewListener;

    .line 102
    .line 103
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
    iput-object p3, p0, Lai/turbolink/sdk/campaign/WebviewListener;->listener:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/turbolink/sdk/campaign/WebviewListener;
    .locals 1

    .line 1
    const-class v0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/turbolink/sdk/campaign/WebviewListener;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/turbolink/sdk/campaign/WebviewListener;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/campaign/WebviewListener;->$VALUES:[Lai/turbolink/sdk/campaign/WebviewListener;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/turbolink/sdk/campaign/WebviewListener;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getListener()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/WebviewListener;->listener:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setListener(Ljava/lang/String;)V
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/WebviewListener;->listener:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
