.class public final enum Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
.super Ljava/lang/Enum;
.source "CampaignType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/attribution/CampaignType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum FB_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum FB_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

.field public static final enum UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->FB_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 12
    .line 13
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 14
    .line 15
    sget-object v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->FB_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 16
    .line 17
    sget-object v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 18
    .line 19
    sget-object v9, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "upload_campaign_info_result"

    .line 5
    .line 6
    .line 7
    const-string v3, "UPLOAD_CAMPAIGN_INFO_RESULT"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 13
    .line 14
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "clipboard"

    .line 18
    .line 19
    const-string v3, "CLIPBOARD"

    .line 20
    .line 21
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 25
    .line 26
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    const-string v2, "gp_install_referrer"

    .line 30
    .line 31
    const-string v3, "GP_INSTALL_REFERRER"

    .line 32
    .line 33
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 37
    .line 38
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    const-string v2, "fb_install_referrer"

    .line 42
    .line 43
    const-string v3, "FB_INSTALL_REFERRER"

    .line 44
    .line 45
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->FB_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 49
    .line 50
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    const-string v2, "meta_install_referrer"

    .line 54
    .line 55
    const-string v3, "META_INSTALL_REFERRER"

    .line 56
    .line 57
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 61
    .line 62
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 63
    .line 64
    const/4 v1, 0x5

    .line 65
    const-string v2, "af_conversion_data"

    .line 66
    .line 67
    const-string v3, "AF_CONVERSION_DATA"

    .line 68
    .line 69
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 73
    .line 74
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 75
    .line 76
    const/4 v1, 0x6

    .line 77
    const-string v2, "aj_conversion_data"

    .line 78
    .line 79
    const-string v3, "AJ_CONVERSION_DATA"

    .line 80
    .line 81
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 85
    .line 86
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 87
    .line 88
    const/4 v1, 0x7

    .line 89
    const-string v2, "fb_deeplink"

    .line 90
    .line 91
    const-string v3, "FB_DEEPLINK"

    .line 92
    .line 93
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->FB_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 97
    .line 98
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 99
    .line 100
    const/16 v1, 0x8

    .line 101
    .line 102
    const-string v2, "ga_deeplink"

    .line 103
    .line 104
    const-string v3, "GA_DEEPLINK"

    .line 105
    .line 106
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 110
    .line 111
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 112
    .line 113
    const/16 v1, 0x9

    .line 114
    .line 115
    const-string v2, "pre_install"

    .line 116
    .line 117
    const-string v3, "PRE_INSTALL"

    .line 118
    .line 119
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 123
    .line 124
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->$values()[Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->$VALUES:[Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->$ENTRIES:Lss/a;

    .line 135
    .line 136
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
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->$VALUES:[Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
