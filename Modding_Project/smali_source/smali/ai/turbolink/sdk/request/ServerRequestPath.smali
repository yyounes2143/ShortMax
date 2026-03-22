.class public final enum Lai/turbolink/sdk/request/ServerRequestPath;
.super Ljava/lang/Enum;
.source "ServerDefines.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/turbolink/sdk/request/ServerRequestPath;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/turbolink/sdk/request/ServerRequestPath;

.field public static final enum GET_CAMPAIGN_INFO:Lai/turbolink/sdk/request/ServerRequestPath;

.field public static final enum GET_CAMPAIGN_LAUNCH_TIME:Lai/turbolink/sdk/request/ServerRequestPath;

.field public static final enum GET_EVENT:Lai/turbolink/sdk/request/ServerRequestPath;

.field public static final enum POST_CLIENT_REWARDS:Lai/turbolink/sdk/request/ServerRequestPath;

.field public static final enum POST_CREATE_DEEPLINK:Lai/turbolink/sdk/request/ServerRequestPath;

.field public static final enum POST_SDK_VERIFY_INFO:Lai/turbolink/sdk/request/ServerRequestPath;


# instance fields
.field private path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lai/turbolink/sdk/request/ServerRequestPath;
    .locals 6

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->GET_EVENT:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 2
    .line 3
    sget-object v1, Lai/turbolink/sdk/request/ServerRequestPath;->GET_CAMPAIGN_INFO:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 4
    .line 5
    sget-object v2, Lai/turbolink/sdk/request/ServerRequestPath;->GET_CAMPAIGN_LAUNCH_TIME:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 6
    .line 7
    sget-object v3, Lai/turbolink/sdk/request/ServerRequestPath;->POST_SDK_VERIFY_INFO:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 8
    .line 9
    sget-object v4, Lai/turbolink/sdk/request/ServerRequestPath;->POST_CREATE_DEEPLINK:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 10
    .line 11
    sget-object v5, Lai/turbolink/sdk/request/ServerRequestPath;->POST_CLIENT_REWARDS:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lai/turbolink/sdk/request/ServerRequestPath;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "event"

    .line 5
    .line 6
    const-string v3, "GET_EVENT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/ServerRequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->GET_EVENT:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 12
    .line 13
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "campaign/campaign-info"

    .line 17
    .line 18
    const-string v3, "GET_CAMPAIGN_INFO"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/ServerRequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->GET_CAMPAIGN_INFO:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 24
    .line 25
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "event/campaign-launch-stat"

    .line 29
    .line 30
    const-string v3, "GET_CAMPAIGN_LAUNCH_TIME"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/ServerRequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->GET_CAMPAIGN_LAUNCH_TIME:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 36
    .line 37
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "event/verify"

    .line 41
    .line 42
    const-string v3, "POST_SDK_VERIFY_INFO"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/ServerRequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->POST_SDK_VERIFY_INFO:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 48
    .line 49
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "deeplink/create"

    .line 53
    .line 54
    const-string v3, "POST_CREATE_DEEPLINK"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/ServerRequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->POST_CREATE_DEEPLINK:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 60
    .line 61
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "campaign/client-reward"

    .line 65
    .line 66
    const-string v3, "POST_CLIENT_REWARDS"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/ServerRequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->POST_CLIENT_REWARDS:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 72
    .line 73
    invoke-static {}, Lai/turbolink/sdk/request/ServerRequestPath;->$values()[Lai/turbolink/sdk/request/ServerRequestPath;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->$VALUES:[Lai/turbolink/sdk/request/ServerRequestPath;

    .line 78
    .line 79
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
    iput-object p3, p0, Lai/turbolink/sdk/request/ServerRequestPath;->path:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/turbolink/sdk/request/ServerRequestPath;
    .locals 1

    .line 1
    const-class v0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/turbolink/sdk/request/ServerRequestPath;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/turbolink/sdk/request/ServerRequestPath;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->$VALUES:[Lai/turbolink/sdk/request/ServerRequestPath;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/turbolink/sdk/request/ServerRequestPath;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestPath;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setPath(Ljava/lang/String;)V
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
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestPath;->path:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
